//
//  Generated code. Do not modify.
//  source: pulumi/codegen/loader.proto
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

import 'loader.pb.dart' as $9;

export 'loader.pb.dart';

@$pb.GrpcServiceName('codegen.Loader')
class LoaderClient extends $grpc.Client {
  static final _$getSchema =
      $grpc.ClientMethod<$9.GetSchemaRequest, $9.GetSchemaResponse>(
          '/codegen.Loader/GetSchema',
          ($9.GetSchemaRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.GetSchemaResponse.fromBuffer(value));

  LoaderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.GetSchemaResponse> getSchema(
      $9.GetSchemaRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSchema, request, options: options);
  }
}

@$pb.GrpcServiceName('codegen.Loader')
abstract class LoaderServiceBase extends $grpc.Service {
  $core.String get $name => 'codegen.Loader';

  LoaderServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.GetSchemaRequest, $9.GetSchemaResponse>(
        'GetSchema',
        getSchema_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.GetSchemaRequest.fromBuffer(value),
        ($9.GetSchemaResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.GetSchemaResponse> getSchema_Pre($grpc.ServiceCall call,
      $async.Future<$9.GetSchemaRequest> request) async {
    return getSchema(call, await request);
  }

  $async.Future<$9.GetSchemaResponse> getSchema(
      $grpc.ServiceCall call, $9.GetSchemaRequest request);
}
