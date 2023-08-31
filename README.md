# retro_trip

Retro meeting app.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## GRPC

To install protoc, see the instructions on
[the Protocol Buffers website](https://developers.google.com/protocol-buffers/).

The easiest way to get the Dart protoc plugin is by running

```sh
$ pub global activate protoc_plugin
```

and follow the directions to add `~/.pub-cache/bin` to your PATH, if you haven't
already done so.

You can now regenerate the Dart files by running

```sh
$ protoc --dart_out=grpc:lib/src/generated -Iprotos protos/retro.proto
```
