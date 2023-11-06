import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retro_trip/src/generated/retro.pbgrpc.dart' as grpc;

import 'model.dart';

typedef HierarchicalItemBuilder = Widget Function(
    BuildContext context, grpc.Card card);

class HierarchicalItem extends StatelessWidget {
  final grpc.Card card;
  final HierarchicalItemBuilder builder;

  const HierarchicalItem(
      {super.key, required this.card, required this.builder});

  @override
  Widget build(BuildContext context) {
    return card.children.isNotEmpty
        ? Column(
            children: [
              builder.call(context, card),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: card.children
                      .map((e) => HierarchicalItem(card: e, builder: builder))
                      .toList(),
                ),
              )
            ],
          )
        : builder.call(context, card);
  }
}

class DraggableItem extends StatefulWidget {
  final Widget child;
  final grpc.Card card;

  const DraggableItem({Key? key, required this.child, required this.card})
      : super(key: key);

  @override
  State<DraggableItem> createState() => _DraggableItemState();
}

class _DraggableItemState extends State<DraggableItem> {
  bool _isDragged = false;
  bool _isWillAccept = false;

  @override
  Widget build(BuildContext context) {
    return DragTarget<grpc.Card>(
      builder: (
        BuildContext context,
        List<dynamic> accepted,
        List<dynamic> rejected,
      ) {
        var icon = _isWillAccept
            ? const Icon(Icons.add)
            : Draggable<grpc.Card>(
                data: widget.card,
                onDragStarted: () {
                  setState(() {
                    _isDragged = true;
                  });
                },
                onDragUpdate: (_) {},
                onDragEnd: (_) {
                  setState(() {
                    _isDragged = false;
                  });
                },
                feedback: Opacity(
                  opacity: 0.8,
                  child: Card(
                    elevation: 1,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                    child: SizedBox(
                      height: 48,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Row(
                          children: [
                            const Icon(Icons.drag_indicator),
                            const SizedBox(width: 4.0),
                            Expanded(
                                child: Text(widget.card.text,
                                    overflow: TextOverflow.ellipsis))
                            // Text(widget.card.text)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                childWhenDragging: const Icon(
                  Icons.drag_indicator,
                  color: Colors.grey,
                ),
                child: const Icon(
                  Icons.drag_indicator,
                ),
              );
        var card = Card(
          elevation: 0.1,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              children: [
                icon,
                const SizedBox(width: 4.0),
                Expanded(child: widget.child)
              ],
            ),
          ),
        );
        return card;
      },
      onWillAccept: (grpc.Card? value) {
        if (value == null) {
          return false;
        }
        setState(() {
          _isWillAccept = !(widget.card.id == value.id ||
              widget.card.path.contains(value.id));
        });
        return _isWillAccept;
      },
      onLeave: (grpc.Card? value) {
        setState(() {
          _isWillAccept = false;
        });
      },
      onAccept: (grpc.Card value) {
        context.read<TripModel>().moveTo(widget.card, value);
        setState(() {
          _isWillAccept = false;
        });
      },
    );
  }
}

class CardItem extends StatefulWidget {
  final grpc.Card card;

  const CardItem(this.card, {super.key});

  @override
  CardItemState createState() => CardItemState();
}

class CardItemState extends State<CardItem> {
  bool _isEditingMode = false;
  late TextEditingController _editController;

  @override
  Widget build(BuildContext context) {
    if (_isEditingMode) {
      _editController = TextEditingController(text: widget.card.text);
      return Row(children: [
        Expanded(
          child: TextField(
            controller: _editController,
            minLines: 1,
            maxLines: 100,
          ),
        ),
        IconButton(
            icon: const Icon(Icons.done),
            onPressed: () {
              context
                  .read<TripModel>()
                  .updateText(widget.card.id, _editController.text);
              _toggleMode();
            }),
      ]);
    }
    return Row(children: [
      Expanded(child: Text(widget.card.text)),
      IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () {
            _toggleMode();
          }),
    ]);
  }

  void _toggleMode() {
    setState(() {
      _isEditingMode = !_isEditingMode;
    });
  }
}
