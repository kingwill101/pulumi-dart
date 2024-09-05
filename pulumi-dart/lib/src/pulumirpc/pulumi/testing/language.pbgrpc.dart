//
//  Generated code. Do not modify.
//  source: pulumi/testing/language.proto
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

import 'language.pb.dart' as $11;

export 'language.pb.dart';

@$pb.GrpcServiceName('pulumirpc.testing.LanguageTest')
class LanguageTestClient extends $grpc.Client {
  static final _$getLanguageTests = $grpc.ClientMethod<
          $11.GetLanguageTestsRequest, $11.GetLanguageTestsResponse>(
      '/pulumirpc.testing.LanguageTest/GetLanguageTests',
      ($11.GetLanguageTestsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.GetLanguageTestsResponse.fromBuffer(value));
  static final _$prepareLanguageTests = $grpc.ClientMethod<
          $11.PrepareLanguageTestsRequest, $11.PrepareLanguageTestsResponse>(
      '/pulumirpc.testing.LanguageTest/PrepareLanguageTests',
      ($11.PrepareLanguageTestsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.PrepareLanguageTestsResponse.fromBuffer(value));
  static final _$runLanguageTest = $grpc.ClientMethod<
          $11.RunLanguageTestRequest, $11.RunLanguageTestResponse>(
      '/pulumirpc.testing.LanguageTest/RunLanguageTest',
      ($11.RunLanguageTestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.RunLanguageTestResponse.fromBuffer(value));

  LanguageTestClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.GetLanguageTestsResponse> getLanguageTests(
      $11.GetLanguageTestsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLanguageTests, request, options: options);
  }

  $grpc.ResponseFuture<$11.PrepareLanguageTestsResponse> prepareLanguageTests(
      $11.PrepareLanguageTestsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$prepareLanguageTests, request, options: options);
  }

  $grpc.ResponseFuture<$11.RunLanguageTestResponse> runLanguageTest(
      $11.RunLanguageTestRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$runLanguageTest, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.testing.LanguageTest')
abstract class LanguageTestServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.testing.LanguageTest';

  LanguageTestServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.GetLanguageTestsRequest,
            $11.GetLanguageTestsResponse>(
        'GetLanguageTests',
        getLanguageTests_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.GetLanguageTestsRequest.fromBuffer(value),
        ($11.GetLanguageTestsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.PrepareLanguageTestsRequest,
            $11.PrepareLanguageTestsResponse>(
        'PrepareLanguageTests',
        prepareLanguageTests_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.PrepareLanguageTestsRequest.fromBuffer(value),
        ($11.PrepareLanguageTestsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.RunLanguageTestRequest,
            $11.RunLanguageTestResponse>(
        'RunLanguageTest',
        runLanguageTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.RunLanguageTestRequest.fromBuffer(value),
        ($11.RunLanguageTestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.GetLanguageTestsResponse> getLanguageTests_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.GetLanguageTestsRequest> request) async {
    return getLanguageTests(call, await request);
  }

  $async.Future<$11.PrepareLanguageTestsResponse> prepareLanguageTests_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.PrepareLanguageTestsRequest> request) async {
    return prepareLanguageTests(call, await request);
  }

  $async.Future<$11.RunLanguageTestResponse> runLanguageTest_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.RunLanguageTestRequest> request) async {
    return runLanguageTest(call, await request);
  }

  $async.Future<$11.GetLanguageTestsResponse> getLanguageTests(
      $grpc.ServiceCall call, $11.GetLanguageTestsRequest request);
  $async.Future<$11.PrepareLanguageTestsResponse> prepareLanguageTests(
      $grpc.ServiceCall call, $11.PrepareLanguageTestsRequest request);
  $async.Future<$11.RunLanguageTestResponse> runLanguageTest(
      $grpc.ServiceCall call, $11.RunLanguageTestRequest request);
}
