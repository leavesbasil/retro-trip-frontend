import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:retro_trip/src/generated/retro.pbgrpc.dart' as grpc;

class TripModel extends ChangeNotifier {
  final grpc.RetroTripClient stub;
  final String tripId;

  String currentStage = '';
  int stageIndex = 0;
  int roomIndex = 0;
  List<grpc.Card> cards = [];
  bool _isEdit = false;

  TripModel(this.stub, this.tripId);

  get length => cards.length;

  get name => currentStage;

  grpc.Card element(index) => cards.elementAt(index);

  factory TripModel.create(grpc.RetroTripClient client, String id) {
    var result = TripModel(client, id);
    result.init();
    return result;
  }

  Future<void> init() async {
    await for (var value
        in stub.streamTrip(grpc.StreamTripRequest(tripId: tripId))) {
      var trip = value.trip;
      stageIndex = trip.currentStage;
      currentStage = trip.stage[stageIndex].name;
      cards = trip.stage[stageIndex].room[0].card;
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
    stub.createCard(grpc.CreateCardRequest(
        tripId: tripId,
        stageIndex: stageIndex,
        roomIndex: roomIndex,
        text: text));
  }

  void moveTo(grpc.Card parent, grpc.Card child) {
    stub.moveCard(grpc.MoveCardRequest(
        tripId: tripId, cardId: child.id, from: null, to: parent.id));
  }

  void switchEditMode() {
    _isEdit = !_isEdit;
    notifyListeners();
  }

  void nextStage() {
    stub.nextStage(grpc.NextStageRequest(tripId: tripId));
  }

  void nextStageWithFunction(String transformer) {
    stub.nextStage(grpc.NextStageRequest(
      tripId: tripId,
      function: [transformer],
    ));
  }

  bool isEditMode() {
    return _isEdit;
  }
}

class TripClientFactory {
  static grpc.RetroTripClient create() {
    final channel = ClientChannel(
      '192.168.1.106',
      port: 9090,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    final stub = grpc.RetroTripClient(channel);
    return stub;
  }
}

class EditCardModel extends ChangeNotifier {
  grpc.Card? _card;

  setCard(grpc.Card card) {
    this._card = card;
    notifyListeners();
  }

  grpc.Card? get card => _card;

  void clear() {
    _card = null;
  }
}
