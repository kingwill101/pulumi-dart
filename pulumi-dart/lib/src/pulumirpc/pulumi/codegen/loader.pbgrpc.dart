// This is a generated file - do not edit.
//
// Generated from pulumi/codegen/loader.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'loader.pb.dart' as $0;

export 'loader.pb.dart';

/// Loader is a service for getting schemas from the Pulumi engine for use in code generators and other tools.
/// This is currently unstable and experimental.
@$pb.GrpcServiceName('codegen.Loader')
class LoaderClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  LoaderClient(super.channel, {super.options, super.interceptors});

  /// GetSchema tries to find a schema for the given package and version.
  $grpc.ResponseFuture<$0.GetSchemaResponse> getSchema(
    $0.GetSchemaRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getSchema, request, options: options);
  }

  // method descriptors

  static final _$getSchema =
      $grpc.ClientMethod<$0.GetSchemaRequest, $0.GetSchemaResponse>(
          '/codegen.Loader/GetSchema',
          ($0.GetSchemaRequest value) => value.writeToBuffer(),
          $0.GetSchemaResponse.fromBuffer);
}

@$pb.GrpcServiceName('codegen.Loader')
abstract class LoaderServiceBase extends $grpc.Service {
  $core.String get $name => 'codegen.Loader';

  LoaderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetSchemaRequest, $0.GetSchemaResponse>(
        'GetSchema',
        getSchema_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSchemaRequest.fromBuffer(value),
        ($0.GetSchemaResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetSchemaResponse> getSchema_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetSchemaRequest> $request) async {
    return getSchema($call, await $request);
  }

  $async.Future<$0.GetSchemaResponse> getSchema(
      $grpc.ServiceCall call, $0.GetSchemaRequest request);
}
