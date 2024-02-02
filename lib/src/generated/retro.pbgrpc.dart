//
//  Generated code. Do not modify.
//  source: retro.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'retro.pb.dart' as $0;

export 'retro.pb.dart';

@$pb.GrpcServiceName('retro.api.v1.RetroTrip')
class RetroTripClient extends $grpc.Client {
  static final _$createTrip = $grpc.ClientMethod<$0.CreateTripRequest, $0.CreateTripReply>(
      '/retro.api.v1.RetroTrip/CreateTrip',
      ($0.CreateTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateTripReply.fromBuffer(value));
  static final _$streamTrip = $grpc.ClientMethod<$0.StreamTripRequest, $0.StreamTripReply>(
      '/retro.api.v1.RetroTrip/StreamTrip',
      ($0.StreamTripRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StreamTripReply.fromBuffer(value));
  static final _$createCard = $grpc.ClientMethod<$0.CreateCardRequest, $0.CreateCardReply>(
      '/retro.api.v1.RetroTrip/CreateCard',
      ($0.CreateCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateCardReply.fromBuffer(value));
  static final _$deleteCard = $grpc.ClientMethod<$0.DeleteCardRequest, $0.DeleteCardReply>(
      '/retro.api.v1.RetroTrip/DeleteCard',
      ($0.DeleteCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteCardReply.fromBuffer(value));
  static final _$updateCard = $grpc.ClientMethod<$0.UpdateCardRequest, $0.UpdateCardReply>(
      '/retro.api.v1.RetroTrip/UpdateCard',
      ($0.UpdateCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateCardReply.fromBuffer(value));
  static final _$cardAction = $grpc.ClientMethod<$0.CardActionRequest, $0.CardActionReply>(
      '/retro.api.v1.RetroTrip/CardAction',
      ($0.CardActionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CardActionReply.fromBuffer(value));
  static final _$moveCard = $grpc.ClientMethod<$0.MoveCardRequest, $0.MoveCardReply>(
      '/retro.api.v1.RetroTrip/MoveCard',
      ($0.MoveCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MoveCardReply.fromBuffer(value));

  RetroTripClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateTripReply> createTrip($0.CreateTripRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createTrip, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamTripReply> streamTrip($0.StreamTripRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamTrip, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.CreateCardReply> createCard($0.CreateCardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteCardReply> deleteCard($0.DeleteCardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCardReply> updateCard($0.UpdateCardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.CardActionReply> cardAction($0.CardActionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardAction, request, options: options);
  }

  $grpc.ResponseFuture<$0.MoveCardReply> moveCard($0.MoveCardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$moveCard, request, options: options);
  }
}

@$pb.GrpcServiceName('retro.api.v1.RetroTrip')
abstract class RetroTripServiceBase extends $grpc.Service {
  $core.String get $name => 'retro.api.v1.RetroTrip';

  RetroTripServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTripRequest, $0.CreateTripReply>(
        'CreateTrip',
        createTrip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTripRequest.fromBuffer(value),
        ($0.CreateTripReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamTripRequest, $0.StreamTripReply>(
        'StreamTrip',
        streamTrip_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamTripRequest.fromBuffer(value),
        ($0.StreamTripReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateCardRequest, $0.CreateCardReply>(
        'CreateCard',
        createCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateCardRequest.fromBuffer(value),
        ($0.CreateCardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteCardRequest, $0.DeleteCardReply>(
        'DeleteCard',
        deleteCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteCardRequest.fromBuffer(value),
        ($0.DeleteCardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateCardRequest, $0.UpdateCardReply>(
        'UpdateCard',
        updateCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateCardRequest.fromBuffer(value),
        ($0.UpdateCardReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CardActionRequest, $0.CardActionReply>(
        'CardAction',
        cardAction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CardActionRequest.fromBuffer(value),
        ($0.CardActionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MoveCardRequest, $0.MoveCardReply>(
        'MoveCard',
        moveCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MoveCardRequest.fromBuffer(value),
        ($0.MoveCardReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTripReply> createTrip_Pre($grpc.ServiceCall call, $async.Future<$0.CreateTripRequest> request) async {
    return createTrip(call, await request);
  }

  $async.Stream<$0.StreamTripReply> streamTrip_Pre($grpc.ServiceCall call, $async.Future<$0.StreamTripRequest> request) async* {
    yield* streamTrip(call, await request);
  }

  $async.Future<$0.CreateCardReply> createCard_Pre($grpc.ServiceCall call, $async.Future<$0.CreateCardRequest> request) async {
    return createCard(call, await request);
  }

  $async.Future<$0.DeleteCardReply> deleteCard_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteCardRequest> request) async {
    return deleteCard(call, await request);
  }

  $async.Future<$0.UpdateCardReply> updateCard_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateCardRequest> request) async {
    return updateCard(call, await request);
  }

  $async.Future<$0.CardActionReply> cardAction_Pre($grpc.ServiceCall call, $async.Future<$0.CardActionRequest> request) async {
    return cardAction(call, await request);
  }

  $async.Future<$0.MoveCardReply> moveCard_Pre($grpc.ServiceCall call, $async.Future<$0.MoveCardRequest> request) async {
    return moveCard(call, await request);
  }

  $async.Future<$0.CreateTripReply> createTrip($grpc.ServiceCall call, $0.CreateTripRequest request);
  $async.Stream<$0.StreamTripReply> streamTrip($grpc.ServiceCall call, $0.StreamTripRequest request);
  $async.Future<$0.CreateCardReply> createCard($grpc.ServiceCall call, $0.CreateCardRequest request);
  $async.Future<$0.DeleteCardReply> deleteCard($grpc.ServiceCall call, $0.DeleteCardRequest request);
  $async.Future<$0.UpdateCardReply> updateCard($grpc.ServiceCall call, $0.UpdateCardRequest request);
  $async.Future<$0.CardActionReply> cardAction($grpc.ServiceCall call, $0.CardActionRequest request);
  $async.Future<$0.MoveCardReply> moveCard($grpc.ServiceCall call, $0.MoveCardRequest request);
}
