//
//  Generated code. Do not modify.
//  source: pulumi/provider.proto
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
import 'plugin.pb.dart' as $2;
import 'provider.pb.dart' as $7;

export 'provider.pb.dart';

@$pb.GrpcServiceName('pulumirpc.ResourceProvider')
class ResourceProviderClient extends $grpc.Client {
  static final _$parameterize =
      $grpc.ClientMethod<$7.ParameterizeRequest, $7.ParameterizeResponse>(
          '/pulumirpc.ResourceProvider/Parameterize',
          ($7.ParameterizeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.ParameterizeResponse.fromBuffer(value));
  static final _$getSchema =
      $grpc.ClientMethod<$7.GetSchemaRequest, $7.GetSchemaResponse>(
          '/pulumirpc.ResourceProvider/GetSchema',
          ($7.GetSchemaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetSchemaResponse.fromBuffer(value));
  static final _$checkConfig =
      $grpc.ClientMethod<$7.CheckRequest, $7.CheckResponse>(
          '/pulumirpc.ResourceProvider/CheckConfig',
          ($7.CheckRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.CheckResponse.fromBuffer(value));
  static final _$diffConfig =
      $grpc.ClientMethod<$7.DiffRequest, $7.DiffResponse>(
          '/pulumirpc.ResourceProvider/DiffConfig',
          ($7.DiffRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.DiffResponse.fromBuffer(value));
  static final _$configure =
      $grpc.ClientMethod<$7.ConfigureRequest, $7.ConfigureResponse>(
          '/pulumirpc.ResourceProvider/Configure',
          ($7.ConfigureRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.ConfigureResponse.fromBuffer(value));
  static final _$invoke =
      $grpc.ClientMethod<$7.InvokeRequest, $7.InvokeResponse>(
          '/pulumirpc.ResourceProvider/Invoke',
          ($7.InvokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.InvokeResponse.fromBuffer(value));
  static final _$streamInvoke =
      $grpc.ClientMethod<$7.InvokeRequest, $7.InvokeResponse>(
          '/pulumirpc.ResourceProvider/StreamInvoke',
          ($7.InvokeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.InvokeResponse.fromBuffer(value));
  static final _$call = $grpc.ClientMethod<$7.CallRequest, $7.CallResponse>(
      '/pulumirpc.ResourceProvider/Call',
      ($7.CallRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CallResponse.fromBuffer(value));
  static final _$check = $grpc.ClientMethod<$7.CheckRequest, $7.CheckResponse>(
      '/pulumirpc.ResourceProvider/Check',
      ($7.CheckRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.CheckResponse.fromBuffer(value));
  static final _$diff = $grpc.ClientMethod<$7.DiffRequest, $7.DiffResponse>(
      '/pulumirpc.ResourceProvider/Diff',
      ($7.DiffRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.DiffResponse.fromBuffer(value));
  static final _$create =
      $grpc.ClientMethod<$7.CreateRequest, $7.CreateResponse>(
          '/pulumirpc.ResourceProvider/Create',
          ($7.CreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.CreateResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$7.ReadRequest, $7.ReadResponse>(
      '/pulumirpc.ResourceProvider/Read',
      ($7.ReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ReadResponse.fromBuffer(value));
  static final _$update =
      $grpc.ClientMethod<$7.UpdateRequest, $7.UpdateResponse>(
          '/pulumirpc.ResourceProvider/Update',
          ($7.UpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $7.UpdateResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$7.DeleteRequest, $1.Empty>(
      '/pulumirpc.ResourceProvider/Delete',
      ($7.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$construct =
      $grpc.ClientMethod<$7.ConstructRequest, $7.ConstructResponse>(
          '/pulumirpc.ResourceProvider/Construct',
          ($7.ConstructRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.ConstructResponse.fromBuffer(value));
  static final _$cancel = $grpc.ClientMethod<$1.Empty, $1.Empty>(
      '/pulumirpc.ResourceProvider/Cancel',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getPluginInfo = $grpc.ClientMethod<$1.Empty, $2.PluginInfo>(
      '/pulumirpc.ResourceProvider/GetPluginInfo',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PluginInfo.fromBuffer(value));
  static final _$attach = $grpc.ClientMethod<$2.PluginAttach, $1.Empty>(
      '/pulumirpc.ResourceProvider/Attach',
      ($2.PluginAttach value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$getMapping =
      $grpc.ClientMethod<$7.GetMappingRequest, $7.GetMappingResponse>(
          '/pulumirpc.ResourceProvider/GetMapping',
          ($7.GetMappingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetMappingResponse.fromBuffer(value));
  static final _$getMappings =
      $grpc.ClientMethod<$7.GetMappingsRequest, $7.GetMappingsResponse>(
          '/pulumirpc.ResourceProvider/GetMappings',
          ($7.GetMappingsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.GetMappingsResponse.fromBuffer(value));

  ResourceProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.ParameterizeResponse> parameterize(
      $7.ParameterizeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$parameterize, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetSchemaResponse> getSchema(
      $7.GetSchemaRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSchema, request, options: options);
  }

  $grpc.ResponseFuture<$7.CheckResponse> checkConfig($7.CheckRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkConfig, request, options: options);
  }

  $grpc.ResponseFuture<$7.DiffResponse> diffConfig($7.DiffRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$diffConfig, request, options: options);
  }

  $grpc.ResponseFuture<$7.ConfigureResponse> configure(
      $7.ConfigureRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$configure, request, options: options);
  }

  $grpc.ResponseFuture<$7.InvokeResponse> invoke($7.InvokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$invoke, request, options: options);
  }

  $grpc.ResponseStream<$7.InvokeResponse> streamInvoke($7.InvokeRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamInvoke, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$7.CallResponse> call($7.CallRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$call, request, options: options);
  }

  $grpc.ResponseFuture<$7.CheckResponse> check($7.CheckRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$check, request, options: options);
  }

  $grpc.ResponseFuture<$7.DiffResponse> diff($7.DiffRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$diff, request, options: options);
  }

  $grpc.ResponseFuture<$7.CreateResponse> create($7.CreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$7.ReadResponse> read($7.ReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$7.UpdateResponse> update($7.UpdateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete($7.DeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$7.ConstructResponse> construct(
      $7.ConstructRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$construct, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> cancel($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancel, request, options: options);
  }

  $grpc.ResponseFuture<$2.PluginInfo> getPluginInfo($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPluginInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> attach($2.PluginAttach request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attach, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetMappingResponse> getMapping(
      $7.GetMappingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapping, request, options: options);
  }

  $grpc.ResponseFuture<$7.GetMappingsResponse> getMappings(
      $7.GetMappingsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMappings, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.ResourceProvider')
abstract class ResourceProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.ResourceProvider';

  ResourceProviderServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$7.ParameterizeRequest, $7.ParameterizeResponse>(
            'Parameterize',
            parameterize_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.ParameterizeRequest.fromBuffer(value),
            ($7.ParameterizeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetSchemaRequest, $7.GetSchemaResponse>(
        'GetSchema',
        getSchema_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetSchemaRequest.fromBuffer(value),
        ($7.GetSchemaResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CheckRequest, $7.CheckResponse>(
        'CheckConfig',
        checkConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CheckRequest.fromBuffer(value),
        ($7.CheckResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DiffRequest, $7.DiffResponse>(
        'DiffConfig',
        diffConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DiffRequest.fromBuffer(value),
        ($7.DiffResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ConfigureRequest, $7.ConfigureResponse>(
        'Configure',
        configure_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ConfigureRequest.fromBuffer(value),
        ($7.ConfigureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.InvokeRequest, $7.InvokeResponse>(
        'Invoke',
        invoke_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.InvokeRequest.fromBuffer(value),
        ($7.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.InvokeRequest, $7.InvokeResponse>(
        'StreamInvoke',
        streamInvoke_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.InvokeRequest.fromBuffer(value),
        ($7.InvokeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CallRequest, $7.CallResponse>(
        'Call',
        call_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CallRequest.fromBuffer(value),
        ($7.CallResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CheckRequest, $7.CheckResponse>(
        'Check',
        check_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CheckRequest.fromBuffer(value),
        ($7.CheckResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DiffRequest, $7.DiffResponse>(
        'Diff',
        diff_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DiffRequest.fromBuffer(value),
        ($7.DiffResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateRequest, $7.CreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateRequest.fromBuffer(value),
        ($7.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ReadRequest, $7.ReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ReadRequest.fromBuffer(value),
        ($7.ReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.UpdateRequest, $7.UpdateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.UpdateRequest.fromBuffer(value),
        ($7.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.DeleteRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.DeleteRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.ConstructRequest, $7.ConstructResponse>(
        'Construct',
        construct_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.ConstructRequest.fromBuffer(value),
        ($7.ConstructResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.Empty>(
        'Cancel',
        cancel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.PluginInfo>(
        'GetPluginInfo',
        getPluginInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.PluginInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PluginAttach, $1.Empty>(
        'Attach',
        attach_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PluginAttach.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.GetMappingRequest, $7.GetMappingResponse>(
        'GetMapping',
        getMapping_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetMappingRequest.fromBuffer(value),
        ($7.GetMappingResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.GetMappingsRequest, $7.GetMappingsResponse>(
            'GetMappings',
            getMappings_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.GetMappingsRequest.fromBuffer(value),
            ($7.GetMappingsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.ParameterizeResponse> parameterize_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.ParameterizeRequest> request) async {
    return parameterize(call, await request);
  }

  $async.Future<$7.GetSchemaResponse> getSchema_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetSchemaRequest> request) async {
    return getSchema(call, await request);
  }

  $async.Future<$7.CheckResponse> checkConfig_Pre(
      $grpc.ServiceCall call, $async.Future<$7.CheckRequest> request) async {
    return checkConfig(call, await request);
  }

  $async.Future<$7.DiffResponse> diffConfig_Pre(
      $grpc.ServiceCall call, $async.Future<$7.DiffRequest> request) async {
    return diffConfig(call, await request);
  }

  $async.Future<$7.ConfigureResponse> configure_Pre($grpc.ServiceCall call,
      $async.Future<$7.ConfigureRequest> request) async {
    return configure(call, await request);
  }

  $async.Future<$7.InvokeResponse> invoke_Pre(
      $grpc.ServiceCall call, $async.Future<$7.InvokeRequest> request) async {
    return invoke(call, await request);
  }

  $async.Stream<$7.InvokeResponse> streamInvoke_Pre(
      $grpc.ServiceCall call, $async.Future<$7.InvokeRequest> request) async* {
    yield* streamInvoke(call, await request);
  }

  $async.Future<$7.CallResponse> call_Pre(
      $grpc.ServiceCall call1, $async.Future<$7.CallRequest> request) async {
    return call(call1, await request);
  }

  $async.Future<$7.CheckResponse> check_Pre(
      $grpc.ServiceCall call, $async.Future<$7.CheckRequest> request) async {
    return check(call, await request);
  }

  $async.Future<$7.DiffResponse> diff_Pre(
      $grpc.ServiceCall call, $async.Future<$7.DiffRequest> request) async {
    return diff(call, await request);
  }

  $async.Future<$7.CreateResponse> create_Pre(
      $grpc.ServiceCall call, $async.Future<$7.CreateRequest> request) async {
    return create(call, await request);
  }

  $async.Future<$7.ReadResponse> read_Pre(
      $grpc.ServiceCall call, $async.Future<$7.ReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$7.UpdateResponse> update_Pre(
      $grpc.ServiceCall call, $async.Future<$7.UpdateRequest> request) async {
    return update(call, await request);
  }

  $async.Future<$1.Empty> delete_Pre(
      $grpc.ServiceCall call, $async.Future<$7.DeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$7.ConstructResponse> construct_Pre($grpc.ServiceCall call,
      $async.Future<$7.ConstructRequest> request) async {
    return construct(call, await request);
  }

  $async.Future<$1.Empty> cancel_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return cancel(call, await request);
  }

  $async.Future<$2.PluginInfo> getPluginInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getPluginInfo(call, await request);
  }

  $async.Future<$1.Empty> attach_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PluginAttach> request) async {
    return attach(call, await request);
  }

  $async.Future<$7.GetMappingResponse> getMapping_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetMappingRequest> request) async {
    return getMapping(call, await request);
  }

  $async.Future<$7.GetMappingsResponse> getMappings_Pre($grpc.ServiceCall call,
      $async.Future<$7.GetMappingsRequest> request) async {
    return getMappings(call, await request);
  }

  $async.Future<$7.ParameterizeResponse> parameterize(
      $grpc.ServiceCall call, $7.ParameterizeRequest request);
  $async.Future<$7.GetSchemaResponse> getSchema(
      $grpc.ServiceCall call, $7.GetSchemaRequest request);
  $async.Future<$7.CheckResponse> checkConfig(
      $grpc.ServiceCall call, $7.CheckRequest request);
  $async.Future<$7.DiffResponse> diffConfig(
      $grpc.ServiceCall call, $7.DiffRequest request);
  $async.Future<$7.ConfigureResponse> configure(
      $grpc.ServiceCall call, $7.ConfigureRequest request);
  $async.Future<$7.InvokeResponse> invoke(
      $grpc.ServiceCall call, $7.InvokeRequest request);
  $async.Stream<$7.InvokeResponse> streamInvoke(
      $grpc.ServiceCall call, $7.InvokeRequest request);
  $async.Future<$7.CallResponse> call(
      $grpc.ServiceCall call, $7.CallRequest request);
  $async.Future<$7.CheckResponse> check(
      $grpc.ServiceCall call, $7.CheckRequest request);
  $async.Future<$7.DiffResponse> diff(
      $grpc.ServiceCall call, $7.DiffRequest request);
  $async.Future<$7.CreateResponse> create(
      $grpc.ServiceCall call, $7.CreateRequest request);
  $async.Future<$7.ReadResponse> read(
      $grpc.ServiceCall call, $7.ReadRequest request);
  $async.Future<$7.UpdateResponse> update(
      $grpc.ServiceCall call, $7.UpdateRequest request);
  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $7.DeleteRequest request);
  $async.Future<$7.ConstructResponse> construct(
      $grpc.ServiceCall call, $7.ConstructRequest request);
  $async.Future<$1.Empty> cancel($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.PluginInfo> getPluginInfo(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> attach(
      $grpc.ServiceCall call, $2.PluginAttach request);
  $async.Future<$7.GetMappingResponse> getMapping(
      $grpc.ServiceCall call, $7.GetMappingRequest request);
  $async.Future<$7.GetMappingsResponse> getMappings(
      $grpc.ServiceCall call, $7.GetMappingsRequest request);
}
