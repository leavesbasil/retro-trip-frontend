import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final myController = TextEditingController();
  final focusNode = FocusNode();
  bool _hasText = false;
  double _padding = 0;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var sendButton = _hasText
        ? IconButton.filled(
            onPressed: () {
              var editContext = context.read<EditCardModel>();
              var tripModel = context.read<TripModel>();
              if (editContext.card != null) {
                tripModel.updateText(editContext.card!.id, myController.text);
              } else {
                tripModel.add(myController.text);
              }
              clearAndClose();
            },
            icon: const Icon(Icons.arrow_upward),
          )
        : const SizedBox(width: 0);
    var clearButton = _hasText
        ? IconButton(
            onPressed: () {
              clearAndClose();
            },
            icon: const Icon(Icons.close))
        : const SizedBox(width: 0);

    var model = context.read<EditCardModel>();
    model.addListener(() {
      if (model.card != null) {
        var value = model.card!.text;
        myController.text = value;
        focusNode.requestFocus();
        setState(() {
          _hasText = value.isNotEmpty;
          _padding = _hasText ? 48.0 + 8.0 : 0.0;
        });
      }
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Stack(alignment: AlignmentDirectional.center, children: [
        AnimatedPadding(
          padding: EdgeInsets.only(right: _padding),
          duration: const Duration(milliseconds: 250),
          child: TextField(
            focusNode: focusNode,
            controller: myController,
            minLines: 1,
            maxLines: 100,
            onChanged: (value) {
              setState(() {
                _hasText = value.isNotEmpty;
                _padding = _hasText ? 48.0 + 8.0 : 0.0;
              });
            },
            decoration: InputDecoration(
              suffixIcon: clearButton,
              border: const OutlineInputBorder(),
              labelText: 'Note',
            ),
          ),
        ),
        Container(
          alignment: AlignmentDirectional.centerEnd,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) => ScaleTransition(
              scale: animation,
              child: child,
            ),
            child: sendButton,
          ),
        )
      ]),
    );
  }

  void clearAndClose() {
    myController.clear();
    setState(() {
      _hasText = false;
      _padding = 0.0;
    });
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
