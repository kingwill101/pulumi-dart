//
//  Generated code. Do not modify.
//  source: pulumi/resource.proto
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
import 'callback.pb.dart' as $3;
import 'provider.pb.dart' as $7;
import 'resource.pb.dart' as $8;

export 'resource.pb.dart';

@$pb.GrpcServiceName('pulumirpc.ResourceMonitor')
class ResourceMonitorClient extends $grpc.Client {
  static final _$supportsFeature =
      $grpc.ClientMethod<$8.SupportsFeatureRequest, $8.SupportsFeatureResponse>(
          '/pulumirpc.ResourceMonitor/SupportsFeature',
          ($8.SupportsFeatureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.SupportsFeatureResponse.fromBuffer(value));
  static final _$invoke =
      $grpc.ClientMethod<$8.ResourceInvokeRequest, $7.InvokeResponse>(
          '/pulumirpc.ResourceMonitor/Invoke',
          ($8.ResourceInvokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.InvokeResponse.fromBuffer(value));
  static final _$streamInvoke =
      $grpc.ClientMethod<$8.ResourceInvokeRequest, $7.InvokeResponse>(
          '/pulumirpc.ResourceMonitor/StreamInvoke',
          ($8.ResourceInvokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.InvokeResponse.fromBuffer(value));
  static final _$call =
      $grpc.ClientMethod<$8.ResourceCallRequest, $7.CallResponse>(
          '/pulumirpc.ResourceMonitor/Call',
          ($8.ResourceCallRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.CallResponse.fromBuffer(value));
  static final _$readResource =
      $grpc.ClientMethod<$8.ReadResourceRequest, $8.ReadResourceResponse>(
          '/pulumirpc.ResourceMonitor/ReadResource',
          ($8.ReadResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.ReadResourceResponse.fromBuffer(value));
  static final _$registerResource = $grpc.ClientMethod<
          $8.RegisterResourceRequest, $8.RegisterResourceResponse>(
      '/pulumirpc.ResourceMonitor/RegisterResource',
      ($8.RegisterResourceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.RegisterResourceResponse.fromBuffer(value));
  static final _$registerResourceOutputs =
      $grpc.ClientMethod<$8.RegisterResourceOutputsRequest, $1.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterResourceOutputs',
          ($8.RegisterResourceOutputsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$registerStackTransform =
      $grpc.ClientMethod<$3.Callback, $1.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterStackTransform',
          ($3.Callback value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$registerStackInvokeTransform =
      $grpc.ClientMethod<$3.Callback, $1.Empty>(
          '/pulumirpc.ResourceMonitor/RegisterStackInvokeTransform',
          ($3.Callback value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$registerPackage =
      $grpc.ClientMethod<$8.RegisterPackageRequest, $8.RegisterPackageResponse>(
          '/pulumirpc.ResourceMonitor/RegisterPackage',
          ($8.RegisterPackageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.RegisterPackageResponse.fromBuffer(value));

  ResourceMonitorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.SupportsFeatureResponse> supportsFeature(
      $8.SupportsFeatureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$supportsFeature, request, options: options);
  }

  $grpc.ResponseFuture<$7.InvokeResponse> invoke(
      $8.ResourceInvokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invoke, request, options: options);
  }

  $grpc.ResponseStream<$7.InvokeResponse> streamInvoke(
      $8.ResourceInvokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamInvoke, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$7.CallResponse> call($8.ResourceCallRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$call, request, options: options);
  }

  $grpc.ResponseFuture<$8.ReadResourceResponse> readResource(
      $8.ReadResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readResource, request, options: options);
  }

  $grpc.ResponseFuture<$8.RegisterResourceResponse> registerResource(
      $8.RegisterResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerResource, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> registerResourceOutputs(
      $8.RegisterResourceOutputsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerResourceOutputs, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.Empty> registerStackTransform($3.Callback request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerStackTransform, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.Empty> registerStackInvokeTransform(
      $3.Callback request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerStackInvokeTransform, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.RegisterPackageResponse> registerPackage(
      $8.RegisterPackageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerPackage, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.ResourceMonitor')
abstract class ResourceMonitorServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.ResourceMonitor';

  ResourceMonitorServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.SupportsFeatureRequest,
            $8.SupportsFeatureResponse>(
        'SupportsFeature',
        supportsFeature_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.SupportsFeatureRequest.fromBuffer(value),
        ($8.SupportsFeatureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ResourceInvokeRequest, $7.InvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.ResourceInvokeRequest.fromBuffer(value),
        ($7.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ResourceInvokeRequest, $7.InvokeResponse>(
        'StreamInvoke',
        streamInvoke_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $8.ResourceInvokeRequest.fromBuffer(value),
        ($7.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.ResourceCallRequest, $7.CallResponse>(
        'Call',
        call_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.ResourceCallRequest.fromBuffer(value),
        ($7.CallResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.ReadResourceRequest, $8.ReadResourceResponse>(
            'ReadResource',
            readResource_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.ReadResourceRequest.fromBuffer(value),
            ($8.ReadResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RegisterResourceRequest,
            $8.RegisterResourceResponse>(
        'RegisterResource',
        registerResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RegisterResourceRequest.fromBuffer(value),
        ($8.RegisterResourceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RegisterResourceOutputsRequest, $1.Empty>(
        'RegisterResourceOutputs',
        registerResourceOutputs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RegisterResourceOutputsRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Callback, $1.Empty>(
        'RegisterStackTransform',
        registerStackTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Callback.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.Callback, $1.Empty>(
        'RegisterStackInvokeTransform',
        registerStackInvokeTransform_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.Callback.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RegisterPackageRequest,
            $8.RegisterPackageResponse>(
        'RegisterPackage',
        registerPackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.RegisterPackageRequest.fromBuffer(value),
        ($8.RegisterPackageResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.SupportsFeatureResponse> supportsFeature_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.SupportsFeatureRequest> request) async {
    return supportsFeature(call, await request);
  }

  $async.Future<$7.InvokeResponse> invoke_Pre($grpc.ServiceCall call,
      $async.Future<$8.ResourceInvokeRequest> request) async {
    return invoke(call, await request);
  }

  $async.Stream<$7.InvokeResponse> streamInvoke_Pre($grpc.ServiceCall call,
      $async.Future<$8.ResourceInvokeRequest> request) async* {
    yield* streamInvoke(call, await request);
  }

  $async.Future<$7.CallResponse> call_Pre($grpc.ServiceCall call1,
      $async.Future<$8.ResourceCallRequest> request) async {
    return call(call1, await request);
  }

  $async.Future<$8.ReadResourceResponse> readResource_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.ReadResourceRequest> request) async {
    return readResource(call, await request);
  }

  $async.Future<$8.RegisterResourceResponse> registerResource_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RegisterResourceRequest> request) async {
    return registerResource(call, await request);
  }

  $async.Future<$1.Empty> registerResourceOutputs_Pre($grpc.ServiceCall call,
      $async.Future<$8.RegisterResourceOutputsRequest> request) async {
    return registerResourceOutputs(call, await request);
  }

  $async.Future<$1.Empty> registerStackTransform_Pre(
      $grpc.ServiceCall call, $async.Future<$3.Callback> request) async {
    return registerStackTransform(call, await request);
  }

  $async.Future<$1.Empty> registerStackInvokeTransform_Pre(
      $grpc.ServiceCall call, $async.Future<$3.Callback> request) async {
    return registerStackInvokeTransform(call, await request);
  }

  $async.Future<$8.RegisterPackageResponse> registerPackage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.RegisterPackageRequest> request) async {
    return registerPackage(call, await request);
  }

  $async.Future<$8.SupportsFeatureResponse> supportsFeature(
      $grpc.ServiceCall call, $8.SupportsFeatureRequest request);
  $async.Future<$7.InvokeResponse> invoke(
      $grpc.ServiceCall call, $8.ResourceInvokeRequest request);
  $async.Stream<$7.InvokeResponse> streamInvoke(
      $grpc.ServiceCall call, $8.ResourceInvokeRequest request);
  $async.Future<$7.CallResponse> call(
      $grpc.ServiceCall call, $8.ResourceCallRequest request);
  $async.Future<$8.ReadResourceResponse> readResource(
      $grpc.ServiceCall call, $8.ReadResourceRequest request);
  $async.Future<$8.RegisterResourceResponse> registerResource(
      $grpc.ServiceCall call, $8.RegisterResourceRequest request);
  $async.Future<$1.Empty> registerResourceOutputs(
      $grpc.ServiceCall call, $8.RegisterResourceOutputsRequest request);
  $async.Future<$1.Empty> registerStackTransform(
      $grpc.ServiceCall call, $3.Callback request);
  $async.Future<$1.Empty> registerStackInvokeTransform(
      $grpc.ServiceCall call, $3.Callback request);
  $async.Future<$8.RegisterPackageResponse> registerPackage(
      $grpc.ServiceCall call, $8.RegisterPackageRequest request);
}
