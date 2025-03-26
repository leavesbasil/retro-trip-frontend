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
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: HierarchicalItem(card: e, builder: builder),
                          ))
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
        var icon = context.read<TripModel>().isEditMode()
            ? Draggable<grpc.Card>(
                data: widget.card,
                onDragStarted: () {
                  setState(() {
                    _isDragged = true;
                  });
                },
                onDragUpdate: (_) {

                },
                onDragEnd: (_) {
                  setState(() {
                    _isDragged = false;
                  });
                },
                feedback: SizedBox(
                    width: (MediaQuery.of(context).size.width) - 64,
                    child: widget.child),
                childWhenDragging: const Icon(
                  Icons.drag_indicator,
                  size: 20,
                  color: Colors.grey,
                ),
                child: const Icon(
                  Icons.drag_indicator,
                  size: 20,
                  color: Colors.white,
                ),
              )
            : const SizedBox();
        if (_isWillAccept) {
          icon = const Icon(
            Icons.add_circle,
            size: 20,
            color: Colors.white,
          );
        }
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inverseSurface,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
          ),
          child: Row(
            children: [icon, Expanded(child: widget.child)],
          ),
        );
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

class GroupItem extends StatelessWidget {
  final Widget child;

  const GroupItem(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        // border: Border.all(color: Theme.of(context).colorScheme.outline),
      ),
      child: child,
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
    return _isEditingMode ? buildEditState(context) : buildCommonState(context);
  }

  Widget buildEditState(BuildContext context) {
    _editController = TextEditingController(text: widget.card.text);
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        TextField(
          textAlignVertical: TextAlignVertical.top,
          controller: _editController,
          minLines: 1,
          maxLines: 100,
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 68.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4))),
            filled: true,
            fillColor: Colors.white,
          ),
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                child: Text("Cancel"),
                onPressed: () {
                  setState(() {
                    _isEditingMode = false;
                  });
                },
              ),
              TextButton(
                child: Text("Save"),
                onPressed: () {
                  setState(() {
                    context
                        .read<TripModel>()
                        .updateText(widget.card.id, _editController.text);
                    _isEditingMode = false;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildCommonState(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Theme.of(context).colorScheme.surface,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, left: 16, right: 8, bottom: 8),
                  child: Text(
                    widget.card.text,
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Container(
                width: 36,
                height: 36,
                alignment: Alignment.center,
                child: MenuAnchor(
                  builder: (BuildContext context, MenuController controller,
                      Widget? child) {
                    return IconButton(
                        onPressed: () {
                          if (controller.isOpen) {
                            controller.close();
                          } else {
                            controller.open();
                          }
                        },
                        icon: const Icon(
                          Icons.more_vert,
                          size: 20,
                        ));
                  },
                  menuChildren: [
                    MenuItemButton(
                        onPressed: () {
                          setState(() {
                            _isEditingMode = true;
                          });
                        },
                        child: const Text("edit v1")),
                    MenuItemButton(
                        onPressed: () {
                          context.read<EditCardModel>().setCard(widget.card);
                        },
                        child: const Text("edit v2")),
                    MenuItemButton(
                        onPressed: () {
                          context.read<TripModel>().delete(widget.card.id);
                        },
                        child: Text("delete"))
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 16, bottom: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 12,
                ),
                SizedBox(width: 8),
                Text("Owner Name"),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.thumb_up_alt_outlined,
                    size: 20,
                  ),
                  onPressed: () {
                    context.read<TripModel>().like(widget.card.id);
                  },
                ),
                Text(widget.card.voiceCount.toString())
              ],
            ),
          )
        ],
      ),
    );
  }
}
