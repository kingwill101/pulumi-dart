//
//  Generated code. Do not modify.
//  source: pulumi/callback.proto
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

import 'callback.pb.dart' as $3;

export 'callback.pb.dart';

@$pb.GrpcServiceName('pulumirpc.Callbacks')
class CallbacksClient extends $grpc.Client {
  static final _$invoke =
      $grpc.ClientMethod<$3.CallbackInvokeRequest, $3.CallbackInvokeResponse>(
          '/pulumirpc.Callbacks/Invoke',
          ($3.CallbackInvokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CallbackInvokeResponse.fromBuffer(value));

  CallbacksClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.CallbackInvokeResponse> invoke(
      $3.CallbackInvokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invoke, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.Callbacks')
abstract class CallbacksServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Callbacks';

  CallbacksServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CallbackInvokeRequest,
            $3.CallbackInvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.CallbackInvokeRequest.fromBuffer(value),
        ($3.CallbackInvokeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.CallbackInvokeResponse> invoke_Pre($grpc.ServiceCall call,
      $async.Future<$3.CallbackInvokeRequest> request) async {
    return invoke(call, await request);
  }

  $async.Future<$3.CallbackInvokeResponse> invoke(
      $grpc.ServiceCall call, $3.CallbackInvokeRequest request);
}
