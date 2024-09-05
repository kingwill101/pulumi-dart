//
//  Generated code. Do not modify.
//  source: pulumi/converter.proto
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

import 'converter.pb.dart' as $4;

export 'converter.pb.dart';

@$pb.GrpcServiceName('pulumirpc.Converter')
class ConverterClient extends $grpc.Client {
  static final _$convertState =
      $grpc.ClientMethod<$4.ConvertStateRequest, $4.ConvertStateResponse>(
          '/pulumirpc.Converter/ConvertState',
          ($4.ConvertStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ConvertStateResponse.fromBuffer(value));
  static final _$convertProgram =
      $grpc.ClientMethod<$4.ConvertProgramRequest, $4.ConvertProgramResponse>(
          '/pulumirpc.Converter/ConvertProgram',
          ($4.ConvertProgramRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ConvertProgramResponse.fromBuffer(value));

  ConverterClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.ConvertStateResponse> convertState(
      $4.ConvertStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$convertState, request, options: options);
  }

  $grpc.ResponseFuture<$4.ConvertProgramResponse> convertProgram(
      $4.ConvertProgramRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$convertProgram, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.Converter')
abstract class ConverterServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Converter';

  ConverterServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.ConvertStateRequest, $4.ConvertStateResponse>(
            'ConvertState',
            convertState_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ConvertStateRequest.fromBuffer(value),
            ($4.ConvertStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ConvertProgramRequest,
            $4.ConvertProgramResponse>(
        'ConvertProgram',
        convertProgram_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ConvertProgramRequest.fromBuffer(value),
        ($4.ConvertProgramResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.ConvertStateResponse> convertState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ConvertStateRequest> request) async {
    return convertState(call, await request);
  }

  $async.Future<$4.ConvertProgramResponse> convertProgram_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ConvertProgramRequest> request) async {
    return convertProgram(call, await request);
  }

  $async.Future<$4.ConvertStateResponse> convertState(
      $grpc.ServiceCall call, $4.ConvertStateRequest request);
  $async.Future<$4.ConvertProgramResponse> convertProgram(
      $grpc.ServiceCall call, $4.ConvertProgramRequest request);
}
