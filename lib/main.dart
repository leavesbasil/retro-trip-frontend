import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:retro_trip/input.dart';
import 'package:retro_trip/src/generated/retro.pbgrpc.dart' as grpc;

import 'card.dart';
import 'model.dart';

void main() {
  runApp(const RetroTripApp());
}

class RetroTripApp extends StatelessWidget {
  const RetroTripApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Provider<grpc.TripClient>(
        create: (_) => TripClientFactory.create(),
        builder: (context, child) {
          return StartPage();
        },
      ),
    );
  }
}

class StartPage extends StatefulWidget {
  StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _tripController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
          appBar: AppBar(title: const Text('Начало ретро')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size.fromWidth(250),
                    ),
                    onPressed: () {
                      var stub = context.read<grpc.TripClient>();
                      var response =
                          stub.createTrip(grpc.CreateTripRequest(owner: 'iam'));
                      response.then((p0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return TripPage(p0.tripId, stub);
                          }),
                        );
                      });
                    },
                    child: const Text("Создать")),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size.fromWidth(250),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        var stub = context.read<grpc.TripClient>();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return TripPage(_tripController.text, stub);
                          }),
                        );
                      }
                    },
                    child: const Text("Подключиться")),
                const SizedBox(height: 10),
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: _tripController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Введите номер встречи';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Идентификатор встречи',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class TripPage extends StatelessWidget {
  final String id;
  final grpc.TripClient client;

  const TripPage(this.id, this.client, {super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => TripModel.create(client, id),
        builder: (context, child) {
          return Consumer<TripModel>(
            builder: (_, trip, ___) {
              return Scaffold(
                  appBar: AppBar(
                    backgroundColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    title: Text(id),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.copy),
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: id));
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      "Идентификатор ретро скопирован в буфер")));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.repeat),
                        selectedIcon: const Icon(Icons.repeat_on),
                        isSelected: trip.isEditMode(),
                        onPressed: () {
                          trip.switchEditMode();
                        },
                      )
                    ],
                  ),
                  body: CustomScrollView(
                      physics: const BouncingScrollPhysics(),
                      slivers: [
                        SliverList(
                            delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            var data = trip.cards[index];
                            var item = HierarchicalItem(
                              card: data,
                              builder: (context, card) {
                                return DraggableItem(
                                  card: card,
                                  child: CardItem(card),
                                );
                              },
                            );
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                              child: data.children.isNotEmpty
                                  ? GroupItem(item)
                                  : item,
                            );
                          },
                          childCount: trip.length,
                        ))
                      ]),
                  resizeToAvoidBottomInset: false,
                  bottomNavigationBar: BottomAppBar(
                    height: 100 + MediaQuery.of(context).viewInsets.bottom,
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const InputForm(),
                  ));
            },
          );
        });
  }
}
