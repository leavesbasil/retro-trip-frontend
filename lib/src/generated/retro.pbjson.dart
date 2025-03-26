//
//  Generated code. Do not modify.
//  source: retro.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nextStageRequestDescriptor instead')
const NextStageRequest$json = {
  '1': 'NextStageRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'function', '3': 2, '4': 3, '5': 9, '10': 'function'},
  ],
};

/// Descriptor for `NextStageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nextStageRequestDescriptor = $convert.base64Decode(
    'ChBOZXh0U3RhZ2VSZXF1ZXN0EhYKBnRyaXBJZBgBIAEoCVIGdHJpcElkEhoKCGZ1bmN0aW9uGA'
    'IgAygJUghmdW5jdGlvbg==');

@$core.Deprecated('Use nextStageReplyDescriptor instead')
const NextStageReply$json = {
  '1': 'NextStageReply',
};

/// Descriptor for `NextStageReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nextStageReplyDescriptor = $convert.base64Decode(
    'Cg5OZXh0U3RhZ2VSZXBseQ==');

@$core.Deprecated('Use createTripRequestDescriptor instead')
const CreateTripRequest$json = {
  '1': 'CreateTripRequest',
  '2': [
    {'1': 'owner', '3': 1, '4': 1, '5': 9, '10': 'owner'},
    {'1': 'stageRequest', '3': 2, '4': 3, '5': 11, '6': '.retro.api.v1.StageRequest', '10': 'stageRequest'},
  ],
};

/// Descriptor for `CreateTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTripRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUcmlwUmVxdWVzdBIUCgVvd25lchgBIAEoCVIFb3duZXISPgoMc3RhZ2VSZXF1ZX'
    'N0GAIgAygLMhoucmV0cm8uYXBpLnYxLlN0YWdlUmVxdWVzdFIMc3RhZ2VSZXF1ZXN0');

@$core.Deprecated('Use stageRequestDescriptor instead')
const StageRequest$json = {
  '1': 'StageRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'inFunction', '3': 3, '4': 3, '5': 9, '10': 'inFunction'},
    {'1': 'outFunction', '3': 4, '4': 3, '5': 9, '10': 'outFunction'},
  ],
};

/// Descriptor for `StageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stageRequestDescriptor = $convert.base64Decode(
    'CgxTdGFnZVJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgR0eXBlGAIgASgJUgR0eXBlEh'
    '4KCmluRnVuY3Rpb24YAyADKAlSCmluRnVuY3Rpb24SIAoLb3V0RnVuY3Rpb24YBCADKAlSC291'
    'dEZ1bmN0aW9u');

@$core.Deprecated('Use createTripReplyDescriptor instead')
const CreateTripReply$json = {
  '1': 'CreateTripReply',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
  ],
};

/// Descriptor for `CreateTripReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTripReplyDescriptor = $convert.base64Decode(
    'Cg9DcmVhdGVUcmlwUmVwbHkSFgoGdHJpcElkGAEgASgJUgZ0cmlwSWQ=');

@$core.Deprecated('Use streamTripRequestDescriptor instead')
const StreamTripRequest$json = {
  '1': 'StreamTripRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
  ],
};

/// Descriptor for `StreamTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamTripRequestDescriptor = $convert.base64Decode(
    'ChFTdHJlYW1UcmlwUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZA==');

@$core.Deprecated('Use streamTripReplyDescriptor instead')
const StreamTripReply$json = {
  '1': 'StreamTripReply',
  '2': [
    {'1': 'trip', '3': 1, '4': 1, '5': 11, '6': '.retro.api.v1.Trip', '10': 'trip'},
  ],
};

/// Descriptor for `StreamTripReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamTripReplyDescriptor = $convert.base64Decode(
    'Cg9TdHJlYW1UcmlwUmVwbHkSJgoEdHJpcBgBIAEoCzISLnJldHJvLmFwaS52MS5UcmlwUgR0cm'
    'lw');

@$core.Deprecated('Use tripDescriptor instead')
const Trip$json = {
  '1': 'Trip',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    {'1': 'card', '3': 3, '4': 3, '5': 11, '6': '.retro.api.v1.Card', '10': 'card'},
    {'1': 'stage', '3': 4, '4': 3, '5': 11, '6': '.retro.api.v1.Stage', '10': 'stage'},
    {'1': 'currentStage', '3': 5, '4': 1, '5': 5, '10': 'currentStage'},
  ],
};

/// Descriptor for `Trip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripDescriptor = $convert.base64Decode(
    'CgRUcmlwEhYKBnRyaXBJZBgBIAEoCVIGdHJpcElkEhQKBW93bmVyGAIgASgJUgVvd25lchImCg'
    'RjYXJkGAMgAygLMhIucmV0cm8uYXBpLnYxLkNhcmRSBGNhcmQSKQoFc3RhZ2UYBCADKAsyEy5y'
    'ZXRyby5hcGkudjEuU3RhZ2VSBXN0YWdlEiIKDGN1cnJlbnRTdGFnZRgFIAEoBVIMY3VycmVudF'
    'N0YWdl');

@$core.Deprecated('Use stageDescriptor instead')
const Stage$json = {
  '1': 'Stage',
  '2': [
    {'1': 'room', '3': 1, '4': 3, '5': 11, '6': '.retro.api.v1.Room', '10': 'room'},
    {'1': 'inFunction', '3': 2, '4': 3, '5': 9, '10': 'inFunction'},
    {'1': 'outFunction', '3': 3, '4': 3, '5': 9, '10': 'outFunction'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Stage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stageDescriptor = $convert.base64Decode(
    'CgVTdGFnZRImCgRyb29tGAEgAygLMhIucmV0cm8uYXBpLnYxLlJvb21SBHJvb20SHgoKaW5GdW'
    '5jdGlvbhgCIAMoCVIKaW5GdW5jdGlvbhIgCgtvdXRGdW5jdGlvbhgDIAMoCVILb3V0RnVuY3Rp'
    'b24SEgoEbmFtZRgEIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use roomDescriptor instead')
const Room$json = {
  '1': 'Room',
  '2': [
    {'1': 'user', '3': 1, '4': 3, '5': 9, '10': 'user'},
    {'1': 'card', '3': 2, '4': 3, '5': 11, '6': '.retro.api.v1.Card', '10': 'card'},
  ],
};

/// Descriptor for `Room`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomDescriptor = $convert.base64Decode(
    'CgRSb29tEhIKBHVzZXIYASADKAlSBHVzZXISJgoEY2FyZBgCIAMoCzISLnJldHJvLmFwaS52MS'
    '5DYXJkUgRjYXJk');

@$core.Deprecated('Use cardDescriptor instead')
const Card$json = {
  '1': 'Card',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
    {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
    {'1': 'voiceCount', '3': 4, '4': 1, '5': 5, '10': 'voiceCount'},
    {'1': 'children', '3': 5, '4': 3, '5': 11, '6': '.retro.api.v1.Card', '10': 'children'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode(
    'CgRDYXJkEhIKBHBhdGgYASABKAlSBHBhdGgSDgoCaWQYAiABKAlSAmlkEhIKBHRleHQYAyABKA'
    'lSBHRleHQSHgoKdm9pY2VDb3VudBgEIAEoBVIKdm9pY2VDb3VudBIuCghjaGlsZHJlbhgFIAMo'
    'CzISLnJldHJvLmFwaS52MS5DYXJkUghjaGlsZHJlbg==');

@$core.Deprecated('Use createCardRequestDescriptor instead')
const CreateCardRequest$json = {
  '1': 'CreateCardRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'author', '3': 3, '4': 1, '5': 9, '10': 'author'},
    {'1': 'stageIndex', '3': 4, '4': 1, '5': 5, '10': 'stageIndex'},
    {'1': 'roomIndex', '3': 5, '4': 1, '5': 5, '10': 'roomIndex'},
  ],
};

/// Descriptor for `CreateCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCardRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVDYXJkUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBISCgR0ZXh0GAIgAS'
    'gJUgR0ZXh0EhYKBmF1dGhvchgDIAEoCVIGYXV0aG9yEh4KCnN0YWdlSW5kZXgYBCABKAVSCnN0'
    'YWdlSW5kZXgSHAoJcm9vbUluZGV4GAUgASgFUglyb29tSW5kZXg=');

@$core.Deprecated('Use createCardReplyDescriptor instead')
const CreateCardReply$json = {
  '1': 'CreateCardReply',
  '2': [
    {'1': 'cardId', '3': 1, '4': 1, '5': 9, '10': 'cardId'},
  ],
};

/// Descriptor for `CreateCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCardReplyDescriptor = $convert.base64Decode(
    'Cg9DcmVhdGVDYXJkUmVwbHkSFgoGY2FyZElkGAEgASgJUgZjYXJkSWQ=');

@$core.Deprecated('Use deleteCardRequestDescriptor instead')
const DeleteCardRequest$json = {
  '1': 'DeleteCardRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
  ],
};

/// Descriptor for `DeleteCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVDYXJkUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBIWCgZjYXJkSWQYAi'
    'ABKAlSBmNhcmRJZA==');

@$core.Deprecated('Use deleteCardReplyDescriptor instead')
const DeleteCardReply$json = {
  '1': 'DeleteCardReply',
};

/// Descriptor for `DeleteCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardReplyDescriptor = $convert.base64Decode(
    'Cg9EZWxldGVDYXJkUmVwbHk=');

@$core.Deprecated('Use cardActionRequestDescriptor instead')
const CardActionRequest$json = {
  '1': 'CardActionRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
    {'1': 'like', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'like'},
    {'1': 'dislike', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'dislike'},
    {'1': 'user', '3': 5, '4': 1, '5': 9, '10': 'user'},
  ],
  '8': [
    {'1': 'action'},
  ],
};

/// Descriptor for `CardActionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardActionRequestDescriptor = $convert.base64Decode(
    'ChFDYXJkQWN0aW9uUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBIWCgZjYXJkSWQYAi'
    'ABKAlSBmNhcmRJZBIUCgRsaWtlGAMgASgISABSBGxpa2USGgoHZGlzbGlrZRgEIAEoCEgAUgdk'
    'aXNsaWtlEhIKBHVzZXIYBSABKAlSBHVzZXJCCAoGYWN0aW9u');

@$core.Deprecated('Use cardActionReplyDescriptor instead')
const CardActionReply$json = {
  '1': 'CardActionReply',
};

/// Descriptor for `CardActionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardActionReplyDescriptor = $convert.base64Decode(
    'Cg9DYXJkQWN0aW9uUmVwbHk=');

@$core.Deprecated('Use updateCardRequestDescriptor instead')
const UpdateCardRequest$json = {
  '1': 'UpdateCardRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
    {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `UpdateCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCardRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVDYXJkUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBIWCgZjYXJkSWQYAi'
    'ABKAlSBmNhcmRJZBISCgR0ZXh0GAMgASgJUgR0ZXh0');

@$core.Deprecated('Use updateCardReplyDescriptor instead')
const UpdateCardReply$json = {
  '1': 'UpdateCardReply',
};

/// Descriptor for `UpdateCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCardReplyDescriptor = $convert.base64Decode(
    'Cg9VcGRhdGVDYXJkUmVwbHk=');

@$core.Deprecated('Use moveCardRequestDescriptor instead')
const MoveCardRequest$json = {
  '1': 'MoveCardRequest',
  '2': [
    {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
    {'1': 'from', '3': 3, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 4, '4': 1, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `MoveCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveCardRequestDescriptor = $convert.base64Decode(
    'Cg9Nb3ZlQ2FyZFJlcXVlc3QSFgoGdHJpcElkGAEgASgJUgZ0cmlwSWQSFgoGY2FyZElkGAIgAS'
    'gJUgZjYXJkSWQSEgoEZnJvbRgDIAEoCVIEZnJvbRIOCgJ0bxgEIAEoCVICdG8=');

@$core.Deprecated('Use moveCardReplyDescriptor instead')
const MoveCardReply$json = {
  '1': 'MoveCardReply',
};

/// Descriptor for `MoveCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveCardReplyDescriptor = $convert.base64Decode(
    'Cg1Nb3ZlQ2FyZFJlcGx5');

