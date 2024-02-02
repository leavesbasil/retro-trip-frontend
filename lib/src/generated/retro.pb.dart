//
//  Generated code. Do not modify.
//  source: retro.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreateTripRequest extends $pb.GeneratedMessage {
  factory CreateTripRequest({
    $core.String? owner,
    $core.Iterable<StageRequest>? stageRequest,
  }) {
    final $result = create();
    if (owner != null) {
      $result.owner = owner;
    }
    if (stageRequest != null) {
      $result.stageRequest.addAll(stageRequest);
    }
    return $result;
  }
  CreateTripRequest._() : super();
  factory CreateTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTripRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'owner')
    ..pc<StageRequest>(2, _omitFieldNames ? '' : 'stageRequest', $pb.PbFieldType.PM, protoName: 'stageRequest', subBuilder: StageRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTripRequest clone() => CreateTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTripRequest copyWith(void Function(CreateTripRequest) updates) => super.copyWith((message) => updates(message as CreateTripRequest)) as CreateTripRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTripRequest create() => CreateTripRequest._();
  CreateTripRequest createEmptyInstance() => create();
  static $pb.PbList<CreateTripRequest> createRepeated() => $pb.PbList<CreateTripRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTripRequest>(create);
  static CreateTripRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get owner => $_getSZ(0);
  @$pb.TagNumber(1)
  set owner($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwner() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwner() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<StageRequest> get stageRequest => $_getList(1);
}

class StageRequest extends $pb.GeneratedMessage {
  factory StageRequest({
    $core.String? name,
    $core.String? type,
    $core.Iterable<$core.String>? inFunction,
    $core.Iterable<$core.String>? outFunction,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (inFunction != null) {
      $result.inFunction.addAll(inFunction);
    }
    if (outFunction != null) {
      $result.outFunction.addAll(outFunction);
    }
    return $result;
  }
  StageRequest._() : super();
  factory StageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..pPS(3, _omitFieldNames ? '' : 'inFunction', protoName: 'inFunction')
    ..pPS(4, _omitFieldNames ? '' : 'outFunction', protoName: 'outFunction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StageRequest clone() => StageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StageRequest copyWith(void Function(StageRequest) updates) => super.copyWith((message) => updates(message as StageRequest)) as StageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StageRequest create() => StageRequest._();
  StageRequest createEmptyInstance() => create();
  static $pb.PbList<StageRequest> createRepeated() => $pb.PbList<StageRequest>();
  @$core.pragma('dart2js:noInline')
  static StageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StageRequest>(create);
  static StageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get inFunction => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get outFunction => $_getList(3);
}

class CreateTripReply extends $pb.GeneratedMessage {
  factory CreateTripReply({
    $core.String? tripId,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    return $result;
  }
  CreateTripReply._() : super();
  factory CreateTripReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateTripReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateTripReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateTripReply clone() => CreateTripReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateTripReply copyWith(void Function(CreateTripReply) updates) => super.copyWith((message) => updates(message as CreateTripReply)) as CreateTripReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTripReply create() => CreateTripReply._();
  CreateTripReply createEmptyInstance() => create();
  static $pb.PbList<CreateTripReply> createRepeated() => $pb.PbList<CreateTripReply>();
  @$core.pragma('dart2js:noInline')
  static CreateTripReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateTripReply>(create);
  static CreateTripReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);
}

class StreamTripRequest extends $pb.GeneratedMessage {
  factory StreamTripRequest({
    $core.String? tripId,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    return $result;
  }
  StreamTripRequest._() : super();
  factory StreamTripRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamTripRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamTripRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamTripRequest clone() => StreamTripRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamTripRequest copyWith(void Function(StreamTripRequest) updates) => super.copyWith((message) => updates(message as StreamTripRequest)) as StreamTripRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamTripRequest create() => StreamTripRequest._();
  StreamTripRequest createEmptyInstance() => create();
  static $pb.PbList<StreamTripRequest> createRepeated() => $pb.PbList<StreamTripRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamTripRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamTripRequest>(create);
  static StreamTripRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);
}

class StreamTripReply extends $pb.GeneratedMessage {
  factory StreamTripReply({
    Trip? trip,
  }) {
    final $result = create();
    if (trip != null) {
      $result.trip = trip;
    }
    return $result;
  }
  StreamTripReply._() : super();
  factory StreamTripReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamTripReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamTripReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOM<Trip>(1, _omitFieldNames ? '' : 'trip', subBuilder: Trip.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamTripReply clone() => StreamTripReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamTripReply copyWith(void Function(StreamTripReply) updates) => super.copyWith((message) => updates(message as StreamTripReply)) as StreamTripReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamTripReply create() => StreamTripReply._();
  StreamTripReply createEmptyInstance() => create();
  static $pb.PbList<StreamTripReply> createRepeated() => $pb.PbList<StreamTripReply>();
  @$core.pragma('dart2js:noInline')
  static StreamTripReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamTripReply>(create);
  static StreamTripReply? _defaultInstance;

  @$pb.TagNumber(1)
  Trip get trip => $_getN(0);
  @$pb.TagNumber(1)
  set trip(Trip v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTrip() => $_has(0);
  @$pb.TagNumber(1)
  void clearTrip() => clearField(1);
  @$pb.TagNumber(1)
  Trip ensureTrip() => $_ensure(0);
}

class Trip extends $pb.GeneratedMessage {
  factory Trip({
    $core.String? tripId,
    $core.String? owner,
    $core.Iterable<Card>? card,
    $core.Iterable<Stage>? stage,
    $core.int? currentStage,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    if (owner != null) {
      $result.owner = owner;
    }
    if (card != null) {
      $result.card.addAll(card);
    }
    if (stage != null) {
      $result.stage.addAll(stage);
    }
    if (currentStage != null) {
      $result.currentStage = currentStage;
    }
    return $result;
  }
  Trip._() : super();
  factory Trip.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Trip.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Trip', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..aOS(2, _omitFieldNames ? '' : 'owner')
    ..pc<Card>(3, _omitFieldNames ? '' : 'card', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..pc<Stage>(4, _omitFieldNames ? '' : 'stage', $pb.PbFieldType.PM, subBuilder: Stage.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'currentStage', $pb.PbFieldType.O3, protoName: 'currentStage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Trip clone() => Trip()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Trip copyWith(void Function(Trip) updates) => super.copyWith((message) => updates(message as Trip)) as Trip;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Trip create() => Trip._();
  Trip createEmptyInstance() => create();
  static $pb.PbList<Trip> createRepeated() => $pb.PbList<Trip>();
  @$core.pragma('dart2js:noInline')
  static Trip getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trip>(create);
  static Trip? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get owner => $_getSZ(1);
  @$pb.TagNumber(2)
  set owner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwner() => clearField(2);

  /// Deprecated
  @$pb.TagNumber(3)
  $core.List<Card> get card => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<Stage> get stage => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get currentStage => $_getIZ(4);
  @$pb.TagNumber(5)
  set currentStage($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentStage() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentStage() => clearField(5);
}

class Stage extends $pb.GeneratedMessage {
  factory Stage({
    $core.Iterable<Room>? room,
    $core.Iterable<$core.String>? inFunction,
    $core.Iterable<$core.String>? outFunction,
  }) {
    final $result = create();
    if (room != null) {
      $result.room.addAll(room);
    }
    if (inFunction != null) {
      $result.inFunction.addAll(inFunction);
    }
    if (outFunction != null) {
      $result.outFunction.addAll(outFunction);
    }
    return $result;
  }
  Stage._() : super();
  factory Stage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Stage', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..pc<Room>(1, _omitFieldNames ? '' : 'room', $pb.PbFieldType.PM, subBuilder: Room.create)
    ..pPS(2, _omitFieldNames ? '' : 'inFunction', protoName: 'inFunction')
    ..pPS(3, _omitFieldNames ? '' : 'outFunction', protoName: 'outFunction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stage clone() => Stage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stage copyWith(void Function(Stage) updates) => super.copyWith((message) => updates(message as Stage)) as Stage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Stage create() => Stage._();
  Stage createEmptyInstance() => create();
  static $pb.PbList<Stage> createRepeated() => $pb.PbList<Stage>();
  @$core.pragma('dart2js:noInline')
  static Stage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stage>(create);
  static Stage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Room> get room => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get inFunction => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get outFunction => $_getList(2);
}

class Room extends $pb.GeneratedMessage {
  factory Room({
    $core.Iterable<$core.String>? user,
    $core.Iterable<Card>? card,
  }) {
    final $result = create();
    if (user != null) {
      $result.user.addAll(user);
    }
    if (card != null) {
      $result.card.addAll(card);
    }
    return $result;
  }
  Room._() : super();
  factory Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Room', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'user')
    ..pc<Card>(2, _omitFieldNames ? '' : 'card', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Room clone() => Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Room copyWith(void Function(Room) updates) => super.copyWith((message) => updates(message as Room)) as Room;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Room create() => Room._();
  Room createEmptyInstance() => create();
  static $pb.PbList<Room> createRepeated() => $pb.PbList<Room>();
  @$core.pragma('dart2js:noInline')
  static Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Room>(create);
  static Room? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get user => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Card> get card => $_getList(1);
}

class Card extends $pb.GeneratedMessage {
  factory Card({
    $core.String? path,
    $core.String? id,
    $core.String? text,
    $core.int? voiceCount,
    $core.Iterable<Card>? children,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (id != null) {
      $result.id = id;
    }
    if (text != null) {
      $result.text = text;
    }
    if (voiceCount != null) {
      $result.voiceCount = voiceCount;
    }
    if (children != null) {
      $result.children.addAll(children);
    }
    return $result;
  }
  Card._() : super();
  factory Card.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Card.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Card', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'voiceCount', $pb.PbFieldType.O3, protoName: 'voiceCount')
    ..pc<Card>(5, _omitFieldNames ? '' : 'children', $pb.PbFieldType.PM, subBuilder: Card.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Card clone() => Card()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Card copyWith(void Function(Card) updates) => super.copyWith((message) => updates(message as Card)) as Card;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Card create() => Card._();
  Card createEmptyInstance() => create();
  static $pb.PbList<Card> createRepeated() => $pb.PbList<Card>();
  @$core.pragma('dart2js:noInline')
  static Card getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Card>(create);
  static Card? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get voiceCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set voiceCount($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVoiceCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearVoiceCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<Card> get children => $_getList(4);
}

class CreateCardRequest extends $pb.GeneratedMessage {
  factory CreateCardRequest({
    $core.String? tripId,
    $core.String? text,
    $core.String? author,
    $core.int? stageIndex,
    $core.int? roomIndex,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    if (text != null) {
      $result.text = text;
    }
    if (author != null) {
      $result.author = author;
    }
    if (stageIndex != null) {
      $result.stageIndex = stageIndex;
    }
    if (roomIndex != null) {
      $result.roomIndex = roomIndex;
    }
    return $result;
  }
  CreateCardRequest._() : super();
  factory CreateCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'author')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'stageIndex', $pb.PbFieldType.O3, protoName: 'stageIndex')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'roomIndex', $pb.PbFieldType.O3, protoName: 'roomIndex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCardRequest clone() => CreateCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCardRequest copyWith(void Function(CreateCardRequest) updates) => super.copyWith((message) => updates(message as CreateCardRequest)) as CreateCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCardRequest create() => CreateCardRequest._();
  CreateCardRequest createEmptyInstance() => create();
  static $pb.PbList<CreateCardRequest> createRepeated() => $pb.PbList<CreateCardRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCardRequest>(create);
  static CreateCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get author => $_getSZ(2);
  @$pb.TagNumber(3)
  set author($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get stageIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set stageIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStageIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearStageIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get roomIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set roomIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRoomIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoomIndex() => clearField(5);
}

class CreateCardReply extends $pb.GeneratedMessage {
  factory CreateCardReply({
    $core.String? cardId,
  }) {
    final $result = create();
    if (cardId != null) {
      $result.cardId = cardId;
    }
    return $result;
  }
  CreateCardReply._() : super();
  factory CreateCardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateCardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateCardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardId', protoName: 'cardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateCardReply clone() => CreateCardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateCardReply copyWith(void Function(CreateCardReply) updates) => super.copyWith((message) => updates(message as CreateCardReply)) as CreateCardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateCardReply create() => CreateCardReply._();
  CreateCardReply createEmptyInstance() => create();
  static $pb.PbList<CreateCardReply> createRepeated() => $pb.PbList<CreateCardReply>();
  @$core.pragma('dart2js:noInline')
  static CreateCardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateCardReply>(create);
  static CreateCardReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);
}

class DeleteCardRequest extends $pb.GeneratedMessage {
  factory DeleteCardRequest({
    $core.String? tripId,
    $core.String? cardId,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    if (cardId != null) {
      $result.cardId = cardId;
    }
    return $result;
  }
  DeleteCardRequest._() : super();
  factory DeleteCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..aOS(2, _omitFieldNames ? '' : 'cardId', protoName: 'cardId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardRequest clone() => DeleteCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardRequest copyWith(void Function(DeleteCardRequest) updates) => super.copyWith((message) => updates(message as DeleteCardRequest)) as DeleteCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCardRequest create() => DeleteCardRequest._();
  DeleteCardRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteCardRequest> createRepeated() => $pb.PbList<DeleteCardRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCardRequest>(create);
  static DeleteCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardId() => clearField(2);
}

class DeleteCardReply extends $pb.GeneratedMessage {
  factory DeleteCardReply() => create();
  DeleteCardReply._() : super();
  factory DeleteCardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteCardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteCardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteCardReply clone() => DeleteCardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteCardReply copyWith(void Function(DeleteCardReply) updates) => super.copyWith((message) => updates(message as DeleteCardReply)) as DeleteCardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteCardReply create() => DeleteCardReply._();
  DeleteCardReply createEmptyInstance() => create();
  static $pb.PbList<DeleteCardReply> createRepeated() => $pb.PbList<DeleteCardReply>();
  @$core.pragma('dart2js:noInline')
  static DeleteCardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteCardReply>(create);
  static DeleteCardReply? _defaultInstance;
}

enum CardActionRequest_Action {
  like, 
  dislike, 
  notSet
}

class CardActionRequest extends $pb.GeneratedMessage {
  factory CardActionRequest({
    $core.String? tripId,
    $core.String? cardId,
    $core.bool? like,
    $core.bool? dislike,
    $core.String? user,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    if (cardId != null) {
      $result.cardId = cardId;
    }
    if (like != null) {
      $result.like = like;
    }
    if (dislike != null) {
      $result.dislike = dislike;
    }
    if (user != null) {
      $result.user = user;
    }
    return $result;
  }
  CardActionRequest._() : super();
  factory CardActionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardActionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, CardActionRequest_Action> _CardActionRequest_ActionByTag = {
    3 : CardActionRequest_Action.like,
    4 : CardActionRequest_Action.dislike,
    0 : CardActionRequest_Action.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardActionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..aOS(2, _omitFieldNames ? '' : 'cardId', protoName: 'cardId')
    ..aOB(3, _omitFieldNames ? '' : 'like')
    ..aOB(4, _omitFieldNames ? '' : 'dislike')
    ..aOS(5, _omitFieldNames ? '' : 'user')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardActionRequest clone() => CardActionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardActionRequest copyWith(void Function(CardActionRequest) updates) => super.copyWith((message) => updates(message as CardActionRequest)) as CardActionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardActionRequest create() => CardActionRequest._();
  CardActionRequest createEmptyInstance() => create();
  static $pb.PbList<CardActionRequest> createRepeated() => $pb.PbList<CardActionRequest>();
  @$core.pragma('dart2js:noInline')
  static CardActionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardActionRequest>(create);
  static CardActionRequest? _defaultInstance;

  CardActionRequest_Action whichAction() => _CardActionRequest_ActionByTag[$_whichOneof(0)]!;
  void clearAction() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get like => $_getBF(2);
  @$pb.TagNumber(3)
  set like($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLike() => $_has(2);
  @$pb.TagNumber(3)
  void clearLike() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get dislike => $_getBF(3);
  @$pb.TagNumber(4)
  set dislike($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDislike() => $_has(3);
  @$pb.TagNumber(4)
  void clearDislike() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get user => $_getSZ(4);
  @$pb.TagNumber(5)
  set user($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(4);
  @$pb.TagNumber(5)
  void clearUser() => clearField(5);
}

class CardActionReply extends $pb.GeneratedMessage {
  factory CardActionReply() => create();
  CardActionReply._() : super();
  factory CardActionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardActionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardActionReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardActionReply clone() => CardActionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardActionReply copyWith(void Function(CardActionReply) updates) => super.copyWith((message) => updates(message as CardActionReply)) as CardActionReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardActionReply create() => CardActionReply._();
  CardActionReply createEmptyInstance() => create();
  static $pb.PbList<CardActionReply> createRepeated() => $pb.PbList<CardActionReply>();
  @$core.pragma('dart2js:noInline')
  static CardActionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardActionReply>(create);
  static CardActionReply? _defaultInstance;
}

class UpdateCardRequest extends $pb.GeneratedMessage {
  factory UpdateCardRequest({
    $core.String? tripId,
    $core.String? cardId,
    $core.String? text,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    if (cardId != null) {
      $result.cardId = cardId;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  UpdateCardRequest._() : super();
  factory UpdateCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..aOS(2, _omitFieldNames ? '' : 'cardId', protoName: 'cardId')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCardRequest clone() => UpdateCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCardRequest copyWith(void Function(UpdateCardRequest) updates) => super.copyWith((message) => updates(message as UpdateCardRequest)) as UpdateCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCardRequest create() => UpdateCardRequest._();
  UpdateCardRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateCardRequest> createRepeated() => $pb.PbList<UpdateCardRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCardRequest>(create);
  static UpdateCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
}

class UpdateCardReply extends $pb.GeneratedMessage {
  factory UpdateCardReply() => create();
  UpdateCardReply._() : super();
  factory UpdateCardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateCardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateCardReply clone() => UpdateCardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateCardReply copyWith(void Function(UpdateCardReply) updates) => super.copyWith((message) => updates(message as UpdateCardReply)) as UpdateCardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCardReply create() => UpdateCardReply._();
  UpdateCardReply createEmptyInstance() => create();
  static $pb.PbList<UpdateCardReply> createRepeated() => $pb.PbList<UpdateCardReply>();
  @$core.pragma('dart2js:noInline')
  static UpdateCardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCardReply>(create);
  static UpdateCardReply? _defaultInstance;
}

class MoveCardRequest extends $pb.GeneratedMessage {
  factory MoveCardRequest({
    $core.String? tripId,
    $core.String? cardId,
    $core.String? from,
    $core.String? to,
  }) {
    final $result = create();
    if (tripId != null) {
      $result.tripId = tripId;
    }
    if (cardId != null) {
      $result.cardId = cardId;
    }
    if (from != null) {
      $result.from = from;
    }
    if (to != null) {
      $result.to = to;
    }
    return $result;
  }
  MoveCardRequest._() : super();
  factory MoveCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoveCardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tripId', protoName: 'tripId')
    ..aOS(2, _omitFieldNames ? '' : 'cardId', protoName: 'cardId')
    ..aOS(3, _omitFieldNames ? '' : 'from')
    ..aOS(4, _omitFieldNames ? '' : 'to')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveCardRequest clone() => MoveCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveCardRequest copyWith(void Function(MoveCardRequest) updates) => super.copyWith((message) => updates(message as MoveCardRequest)) as MoveCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveCardRequest create() => MoveCardRequest._();
  MoveCardRequest createEmptyInstance() => create();
  static $pb.PbList<MoveCardRequest> createRepeated() => $pb.PbList<MoveCardRequest>();
  @$core.pragma('dart2js:noInline')
  static MoveCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveCardRequest>(create);
  static MoveCardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tripId => $_getSZ(0);
  @$pb.TagNumber(1)
  set tripId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTripId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTripId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardId => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get to => $_getSZ(3);
  @$pb.TagNumber(4)
  set to($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);
}

class MoveCardReply extends $pb.GeneratedMessage {
  factory MoveCardReply() => create();
  MoveCardReply._() : super();
  factory MoveCardReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MoveCardReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MoveCardReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'retro.api.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MoveCardReply clone() => MoveCardReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MoveCardReply copyWith(void Function(MoveCardReply) updates) => super.copyWith((message) => updates(message as MoveCardReply)) as MoveCardReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MoveCardReply create() => MoveCardReply._();
  MoveCardReply createEmptyInstance() => create();
  static $pb.PbList<MoveCardReply> createRepeated() => $pb.PbList<MoveCardReply>();
  @$core.pragma('dart2js:noInline')
  static MoveCardReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MoveCardReply>(create);
  static MoveCardReply? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
