///
//  Generated code. Do not modify.
//  source: retro.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createTripRequestDescriptor instead')
const CreateTripRequest$json = const {
  '1': 'CreateTripRequest',
  '2': const [
    const {'1': 'owner', '3': 1, '4': 1, '5': 9, '10': 'owner'},
  ],
};

/// Descriptor for `CreateTripRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTripRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUcmlwUmVxdWVzdBIUCgVvd25lchgBIAEoCVIFb3duZXI=');
@$core.Deprecated('Use createTripReplyDescriptor instead')
const CreateTripReply$json = const {
  '1': 'CreateTripReply',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
  ],
};

/// Descriptor for `CreateTripReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTripReplyDescriptor = $convert.base64Decode('Cg9DcmVhdGVUcmlwUmVwbHkSFgoGdHJpcElkGAEgASgJUgZ0cmlwSWQ=');
@$core.Deprecated('Use tripStreamingRequestDescriptor instead')
const TripStreamingRequest$json = const {
  '1': 'TripStreamingRequest',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
  ],
};

/// Descriptor for `TripStreamingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripStreamingRequestDescriptor = $convert.base64Decode('ChRUcmlwU3RyZWFtaW5nUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZA==');
@$core.Deprecated('Use tripStreamingReplyDescriptor instead')
const TripStreamingReply$json = const {
  '1': 'TripStreamingReply',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    const {'1': 'owner', '3': 2, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'card', '3': 3, '4': 3, '5': 11, '6': '.retro.api.v1.Card', '10': 'card'},
  ],
};

/// Descriptor for `TripStreamingReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tripStreamingReplyDescriptor = $convert.base64Decode('ChJUcmlwU3RyZWFtaW5nUmVwbHkSFgoGdHJpcElkGAEgASgJUgZ0cmlwSWQSFAoFb3duZXIYAiABKAlSBW93bmVyEiYKBGNhcmQYAyADKAsyEi5yZXRyby5hcGkudjEuQ2FyZFIEY2FyZA==');
@$core.Deprecated('Use cardDescriptor instead')
const Card$json = const {
  '1': 'Card',
  '2': const [
    const {'1': 'cardId', '3': 1, '4': 1, '5': 9, '10': 'cardId'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    const {'1': 'voiceCount', '3': 3, '4': 1, '5': 5, '10': 'voiceCount'},
  ],
};

/// Descriptor for `Card`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDescriptor = $convert.base64Decode('CgRDYXJkEhYKBmNhcmRJZBgBIAEoCVIGY2FyZElkEhIKBHRleHQYAiABKAlSBHRleHQSHgoKdm9pY2VDb3VudBgDIAEoBVIKdm9pY2VDb3VudA==');
@$core.Deprecated('Use createCardRequestDescriptor instead')
const CreateCardRequest$json = const {
  '1': 'CreateCardRequest',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `CreateCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCardRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVDYXJkUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBISCgR0ZXh0GAIgASgJUgR0ZXh0');
@$core.Deprecated('Use createCardReplyDescriptor instead')
const CreateCardReply$json = const {
  '1': 'CreateCardReply',
  '2': const [
    const {'1': 'cardId', '3': 1, '4': 1, '5': 9, '10': 'cardId'},
  ],
};

/// Descriptor for `CreateCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createCardReplyDescriptor = $convert.base64Decode('Cg9DcmVhdGVDYXJkUmVwbHkSFgoGY2FyZElkGAEgASgJUgZjYXJkSWQ=');
@$core.Deprecated('Use deleteCardRequestDescriptor instead')
const DeleteCardRequest$json = const {
  '1': 'DeleteCardRequest',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    const {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
  ],
};

/// Descriptor for `DeleteCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardRequestDescriptor = $convert.base64Decode('ChFEZWxldGVDYXJkUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBIWCgZjYXJkSWQYAiABKAlSBmNhcmRJZA==');
@$core.Deprecated('Use deleteCardReplyDescriptor instead')
const DeleteCardReply$json = const {
  '1': 'DeleteCardReply',
};

/// Descriptor for `DeleteCardReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteCardReplyDescriptor = $convert.base64Decode('Cg9EZWxldGVDYXJkUmVwbHk=');
@$core.Deprecated('Use cardActionRequestDescriptor instead')
const CardActionRequest$json = const {
  '1': 'CardActionRequest',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    const {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
    const {'1': 'like', '3': 3, '4': 1, '5': 8, '9': 0, '10': 'like'},
    const {'1': 'dislike', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'dislike'},
  ],
  '8': const [
    const {'1': 'action'},
  ],
};

/// Descriptor for `CardActionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardActionRequestDescriptor = $convert.base64Decode('ChFDYXJkQWN0aW9uUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBIWCgZjYXJkSWQYAiABKAlSBmNhcmRJZBIUCgRsaWtlGAMgASgISABSBGxpa2USGgoHZGlzbGlrZRgEIAEoCEgAUgdkaXNsaWtlQggKBmFjdGlvbg==');
@$core.Deprecated('Use cardActionReplyDescriptor instead')
const CardActionReply$json = const {
  '1': 'CardActionReply',
};

/// Descriptor for `CardActionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardActionReplyDescriptor = $convert.base64Decode('Cg9DYXJkQWN0aW9uUmVwbHk=');
@$core.Deprecated('Use updateCardRequestDescriptor instead')
const UpdateCardRequest$json = const {
  '1': 'UpdateCardRequest',
  '2': const [
    const {'1': 'tripId', '3': 1, '4': 1, '5': 9, '10': 'tripId'},
    const {'1': 'cardId', '3': 2, '4': 1, '5': 9, '10': 'cardId'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `UpdateCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCardRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVDYXJkUmVxdWVzdBIWCgZ0cmlwSWQYASABKAlSBnRyaXBJZBIWCgZjYXJkSWQYAiABKAlSBmNhcmRJZBISCgR0ZXh0GAMgASgJUgR0ZXh0');
@$core.Deprecated('Use updateCardReplayDescriptor instead')
const UpdateCardReplay$json = const {
  '1': 'UpdateCardReplay',
};

/// Descriptor for `UpdateCardReplay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateCardReplayDescriptor = $convert.base64Decode('ChBVcGRhdGVDYXJkUmVwbGF5');
