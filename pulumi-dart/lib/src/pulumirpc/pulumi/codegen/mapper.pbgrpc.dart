//
//  Generated code. Do not modify.
//  source: pulumi/codegen/mapper.proto
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

import 'mapper.pb.dart' as $10;

export 'mapper.pb.dart';

@$pb.GrpcServiceName('codegen.Mapper')
class MapperClient extends $grpc.Client {
  static final _$getMapping =
      $grpc.ClientMethod<$10.GetMappingRequest, $10.GetMappingResponse>(
          '/codegen.Mapper/GetMapping',
          ($10.GetMappingRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.GetMappingResponse.fromBuffer(value));

  MapperClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.GetMappingResponse> getMapping(
      $10.GetMappingRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapping, request, options: options);
  }
}

@$pb.GrpcServiceName('codegen.Mapper')
abstract class MapperServiceBase extends $grpc.Service {
  $core.String get $name => 'codegen.Mapper';

  MapperServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$10.GetMappingRequest, $10.GetMappingResponse>(
            'GetMapping',
            getMapping_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $10.GetMappingRequest.fromBuffer(value),
            ($10.GetMappingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.GetMappingResponse> getMapping_Pre($grpc.ServiceCall call,
      $async.Future<$10.GetMappingRequest> request) async {
    return getMapping(call, await request);
  }

  $async.Future<$10.GetMappingResponse> getMapping(
      $grpc.ServiceCall call, $10.GetMappingRequest request);
}
