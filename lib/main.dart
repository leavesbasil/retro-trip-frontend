import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';
import 'package:retro_trip/src/generated/retro.pbgrpc.dart' as grpc;
import 'package:retro_trip/src/input.dart';

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
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text(id),
              actions: [
                IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: id));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:
                            Text("Идентификатор ретро скопирован в буфер")));
                  },
                )
              ],
            ),
            body: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  Consumer<TripModel>(builder: (_, trip, ___) {
                    return SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                      return Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              // An action can be bigger than the others.
                              flex: 2,
                              onPressed: (context) {
                                trip.delete(trip.element(index).cardId);
                              },
                              backgroundColor: const Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            )
                          ],
                        ),
                        child: ListItem(trip, index),
                      );
                    }, childCount: trip.length));
                  })
                ]),
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: BottomAppBar(
              height: 100 + MediaQuery.of(context).viewInsets.bottom,
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const InputForm(),
            ));
        });
  }
}

class TripModel extends ChangeNotifier {
  List<grpc.Card> cards = [];

  final grpc.TripClient stub;
  final String tripId;

  TripModel(this.stub, this.tripId);

  get length => cards.length;

  grpc.Card element(index) => cards.elementAt(index);

  factory TripModel.create(grpc.TripClient client, String id) {
    var result = TripModel(client, id);
    result.init();
    return result;
  }

  Future<void> init() async {
    await for (var trip
        in stub.tripStreaming(grpc.TripStreamingRequest(tripId: tripId))) {
      cards = trip.card;
      notifyListeners();
    }
  }

  void generate() async {
    stub.createCard(grpc.CreateCardRequest(
        tripId: tripId, text: WordPair.random().join(" ")));
  }

  void like(String cardId) {
    stub.cardAction(
        grpc.CardActionRequest(tripId: tripId, cardId: cardId, like: true));
  }

  void dislike(String cardId) {
    stub.cardAction(
        grpc.CardActionRequest(tripId: tripId, cardId: cardId, dislike: true));
  }

  void delete(String cardId) {
    stub.deleteCard(grpc.DeleteCardRequest(tripId: tripId, cardId: cardId));
  }

  void updateText(String cardId, String text) {
    stub.updateCard(
        grpc.UpdateCardRequest(tripId: tripId, cardId: cardId, text: text));
  }

  void add(String text) {
    stub.createCard(grpc.CreateCardRequest(tripId: tripId, text: text));
  }
}

class TripClientFactory {
  static grpc.TripClient create() {
    final channel = ClientChannel(
      '192.168.1.106',
      port: 9090,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    final stub = grpc.TripClient(channel);
    return stub;
  }
}

class ListItem extends StatefulWidget {
  TripModel model;
  int index;

  ListItem(this.model, this.index, {super.key});

  @override
  ListItemState createState() => ListItemState();
}

class ListItemState extends State<ListItem> {
  bool _isEditingMode = false;
  late TextEditingController _editController;
  late TripModel _trip;
  late int _index;

  @override
  void initState() {
    super.initState();
    _trip = widget.model;
    _index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: titleWidget,
        subtitle: Text('Rating: ${_trip.element(_index).voiceCount}'),
        trailing: tralingButton,
        onLongPress: _toggleMode,
      ),
    );
  }

  Widget get titleWidget {
    if (_isEditingMode) {
      _editController = TextEditingController(text: _trip.element(_index).text);
      return TextField(
        controller: _editController,
      );
    } else {
      return Text(_trip.element(_index).text);
    }
  }

  Widget get tralingButton {
    if (_isEditingMode) {
      return IconButton(
        icon: const Icon(Icons.check),
        onPressed: () {
          _trip.updateText(_trip.element(_index).cardId, _editController.text);
          _toggleMode();
        },
      );
    } else {
      return Row(mainAxisSize: MainAxisSize.min, children: [
        IconButton(
          icon: const Icon(Icons.thumb_up),
          tooltip: 'Like',
          onPressed: () {
            _trip.like(_trip.element(_index).cardId);
          },
        ),
        IconButton(
          icon: const Icon(Icons.thumb_down),
          tooltip: 'Dislike',
          onPressed: () {
            _trip.dislike(_trip.element(_index).cardId);
          },
        ),
      ]);
    }
  }

  void _toggleMode() {
    setState(() {
      _isEditingMode = !_isEditingMode;
    });
  }
}
