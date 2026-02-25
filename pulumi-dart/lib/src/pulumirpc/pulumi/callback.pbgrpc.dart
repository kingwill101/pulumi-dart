// This is a generated file - do not edit.
//
// Generated from pulumi/callback.proto.

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

import 'callback.pb.dart' as $0;

export 'callback.pb.dart';

/// Callbacks is a service for invoking functions in one runtime from other processes.
@$pb.GrpcServiceName('pulumirpc.Callbacks')
class CallbacksClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  CallbacksClient(super.channel, {super.options, super.interceptors});

  /// Invoke invokes a given callback, identified by its token.
  $grpc.ResponseFuture<$0.CallbackInvokeResponse> invoke(
    $0.CallbackInvokeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$invoke, request, options: options);
  }

  // method descriptors

  static final _$invoke =
      $grpc.ClientMethod<$0.CallbackInvokeRequest, $0.CallbackInvokeResponse>(
          '/pulumirpc.Callbacks/Invoke',
          ($0.CallbackInvokeRequest value) => value.writeToBuffer(),
          $0.CallbackInvokeResponse.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.Callbacks')
abstract class CallbacksServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Callbacks';

  CallbacksServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CallbackInvokeRequest,
            $0.CallbackInvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CallbackInvokeRequest.fromBuffer(value),
        ($0.CallbackInvokeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CallbackInvokeResponse> invoke_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CallbackInvokeRequest> $request) async {
    return invoke($call, await $request);
  }

  $async.Future<$0.CallbackInvokeResponse> invoke(
      $grpc.ServiceCall call, $0.CallbackInvokeRequest request);
}
