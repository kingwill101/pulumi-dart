// ignore_for_file: unnecessary_library_name

/// Pulumi provider authoring APIs for Dart.
///
/// This library exposes the provider-side contracts and gRPC server helpers
/// used to implement custom Pulumi providers and component methods.
///
/// Quick start:
///
/// ```dart
/// import 'package:pulumi/provider.dart';
///
/// class MyProvider extends Provider {
///   @override
///   Future<CreateResult> create(String urn, Map<String, dynamic> inputs) async {
///     return CreateResult(id: 'resource-1', outs: <String, dynamic>{...inputs});
///   }
/// }
///
/// Future<void> main(List<String> args) async {
///   await serve(MyProvider(), args);
/// }
/// ```
///
/// See `example/provider_authoring_example.dart` in this package for a more
/// complete provider implementation.
library provider;

export 'src/provider/internals.dart';
export 'src/provider/provider.dart';
export 'src/provider/server.dart';
