// This is a generated file - do not edit.
//
// Generated from pulumi/testing/language.proto.

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

import 'language.pb.dart' as $0;

export 'language.pb.dart';

/// LanguageTest is the interface to the pulumi language test framework. This is _highly_ experimental and
/// currently subject to breaking changes without warning.
@$pb.GrpcServiceName('pulumirpc.testing.LanguageTest')
class LanguageTestClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  LanguageTestClient(super.channel, {super.options, super.interceptors});

  /// GetLanguageTests returns a list of all the language tests.
  $grpc.ResponseFuture<$0.GetLanguageTestsResponse> getLanguageTests(
    $0.GetLanguageTestsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getLanguageTests, request, options: options);
  }

  /// PrepareLanguageTests prepares the engine to run language tests. It sets up a stable artifacts folder
  /// (which should be .gitignore'd) and fills it with the core SDK artifact.
  $grpc.ResponseFuture<$0.PrepareLanguageTestsResponse> prepareLanguageTests(
    $0.PrepareLanguageTestsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$prepareLanguageTests, request, options: options);
  }

  /// RunLanguageTest runs a single test of the language plugin.
  $grpc.ResponseFuture<$0.RunLanguageTestResponse> runLanguageTest(
    $0.RunLanguageTestRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$runLanguageTest, request, options: options);
  }

  // method descriptors

  static final _$getLanguageTests = $grpc.ClientMethod<
          $0.GetLanguageTestsRequest, $0.GetLanguageTestsResponse>(
      '/pulumirpc.testing.LanguageTest/GetLanguageTests',
      ($0.GetLanguageTestsRequest value) => value.writeToBuffer(),
      $0.GetLanguageTestsResponse.fromBuffer);
  static final _$prepareLanguageTests = $grpc.ClientMethod<
          $0.PrepareLanguageTestsRequest, $0.PrepareLanguageTestsResponse>(
      '/pulumirpc.testing.LanguageTest/PrepareLanguageTests',
      ($0.PrepareLanguageTestsRequest value) => value.writeToBuffer(),
      $0.PrepareLanguageTestsResponse.fromBuffer);
  static final _$runLanguageTest =
      $grpc.ClientMethod<$0.RunLanguageTestRequest, $0.RunLanguageTestResponse>(
          '/pulumirpc.testing.LanguageTest/RunLanguageTest',
          ($0.RunLanguageTestRequest value) => value.writeToBuffer(),
          $0.RunLanguageTestResponse.fromBuffer);
}

@$pb.GrpcServiceName('pulumirpc.testing.LanguageTest')
abstract class LanguageTestServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.testing.LanguageTest';

  LanguageTestServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetLanguageTestsRequest,
            $0.GetLanguageTestsResponse>(
        'GetLanguageTests',
        getLanguageTests_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetLanguageTestsRequest.fromBuffer(value),
        ($0.GetLanguageTestsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PrepareLanguageTestsRequest,
            $0.PrepareLanguageTestsResponse>(
        'PrepareLanguageTests',
        prepareLanguageTests_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PrepareLanguageTestsRequest.fromBuffer(value),
        ($0.PrepareLanguageTestsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunLanguageTestRequest,
            $0.RunLanguageTestResponse>(
        'RunLanguageTest',
        runLanguageTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RunLanguageTestRequest.fromBuffer(value),
        ($0.RunLanguageTestResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetLanguageTestsResponse> getLanguageTests_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetLanguageTestsRequest> $request) async {
    return getLanguageTests($call, await $request);
  }

  $async.Future<$0.GetLanguageTestsResponse> getLanguageTests(
      $grpc.ServiceCall call, $0.GetLanguageTestsRequest request);

  $async.Future<$0.PrepareLanguageTestsResponse> prepareLanguageTests_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.PrepareLanguageTestsRequest> $request) async {
    return prepareLanguageTests($call, await $request);
  }

  $async.Future<$0.PrepareLanguageTestsResponse> prepareLanguageTests(
      $grpc.ServiceCall call, $0.PrepareLanguageTestsRequest request);

  $async.Future<$0.RunLanguageTestResponse> runLanguageTest_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RunLanguageTestRequest> $request) async {
    return runLanguageTest($call, await $request);
  }

  $async.Future<$0.RunLanguageTestResponse> runLanguageTest(
      $grpc.ServiceCall call, $0.RunLanguageTestRequest request);
}
