//
//  Generated code. Do not modify.
//  source: pulumi/engine.proto
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

import '../google/protobuf/empty.pb.dart' as $1;
import 'engine.pb.dart' as $5;

export 'engine.pb.dart';

@$pb.GrpcServiceName('pulumirpc.Engine')
class EngineClient extends $grpc.Client {
  static final _$log = $grpc.ClientMethod<$5.LogRequest, $1.Empty>(
      '/pulumirpc.Engine/Log',
      ($5.LogRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getRootResource =
      $grpc.ClientMethod<$5.GetRootResourceRequest, $5.GetRootResourceResponse>(
          '/pulumirpc.Engine/GetRootResource',
          ($5.GetRootResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.GetRootResourceResponse.fromBuffer(value));
  static final _$setRootResource =
      $grpc.ClientMethod<$5.SetRootResourceRequest, $5.SetRootResourceResponse>(
          '/pulumirpc.Engine/SetRootResource',
          ($5.SetRootResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.SetRootResourceResponse.fromBuffer(value));

  EngineClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Empty> log($5.LogRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$log, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetRootResourceResponse> getRootResource(
      $5.GetRootResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRootResource, request, options: options);
  }

  $grpc.ResponseFuture<$5.SetRootResourceResponse> setRootResource(
      $5.SetRootResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setRootResource, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.Engine')
abstract class EngineServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Engine';

  EngineServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.LogRequest, $1.Empty>(
        'Log',
        log_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.LogRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetRootResourceRequest,
            $5.GetRootResourceResponse>(
        'GetRootResource',
        getRootResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetRootResourceRequest.fromBuffer(value),
        ($5.GetRootResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SetRootResourceRequest,
            $5.SetRootResourceResponse>(
        'SetRootResource',
        setRootResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.SetRootResourceRequest.fromBuffer(value),
        ($5.SetRootResourceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> log_Pre(
      $grpc.ServiceCall call, $async.Future<$5.LogRequest> request) async {
    return log(call, await request);
  }

  $async.Future<$5.GetRootResourceResponse> getRootResource_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetRootResourceRequest> request) async {
    return getRootResource(call, await request);
  }

  $async.Future<$5.SetRootResourceResponse> setRootResource_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.SetRootResourceRequest> request) async {
    return setRootResource(call, await request);
  }

  $async.Future<$1.Empty> log($grpc.ServiceCall call, $5.LogRequest request);
  $async.Future<$5.GetRootResourceResponse> getRootResource(
      $grpc.ServiceCall call, $5.GetRootResourceRequest request);
  $async.Future<$5.SetRootResourceResponse> setRootResource(
      $grpc.ServiceCall call, $5.SetRootResourceRequest request);
}
