import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:retro_trip/src/generated/retro.pbgrpc.dart' as grpc;

class TripModel extends ChangeNotifier {
  List<grpc.Card> cards = [];

  final grpc.TripClient stub;
  final String tripId;
  bool _isEdit = false;

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

  void moveTo(grpc.Card parent, grpc.Card child) {
    stub.moveCard(grpc.MoveCardRequest(
        tripId: tripId, cardId: child.id, from: null, to: parent.id));
  }

  void switchEditMode() {
    _isEdit = !_isEdit;
    notifyListeners();
  }

  bool isEditMode() {
    return _isEdit;
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

class EditCardModel extends ChangeNotifier {
  grpc.Card? _card;

  setCard(grpc.Card card){
      this._card = card;
      notifyListeners();
  }

  grpc.Card? get card => _card;
}
