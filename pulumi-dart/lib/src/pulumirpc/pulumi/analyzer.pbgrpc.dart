//
//  Generated code. Do not modify.
//  source: pulumi/analyzer.proto
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
import 'analyzer.pb.dart' as $0;
import 'plugin.pb.dart' as $2;

export 'analyzer.pb.dart';

@$pb.GrpcServiceName('pulumirpc.Analyzer')
class AnalyzerClient extends $grpc.Client {
  static final _$analyze =
      $grpc.ClientMethod<$0.AnalyzeRequest, $0.AnalyzeResponse>(
          '/pulumirpc.Analyzer/Analyze',
          ($0.AnalyzeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnalyzeResponse.fromBuffer(value));
  static final _$analyzeStack =
      $grpc.ClientMethod<$0.AnalyzeStackRequest, $0.AnalyzeResponse>(
          '/pulumirpc.Analyzer/AnalyzeStack',
          ($0.AnalyzeStackRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AnalyzeResponse.fromBuffer(value));
  static final _$remediate =
      $grpc.ClientMethod<$0.AnalyzeRequest, $0.RemediateResponse>(
          '/pulumirpc.Analyzer/Remediate',
          ($0.AnalyzeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemediateResponse.fromBuffer(value));
  static final _$getAnalyzerInfo =
      $grpc.ClientMethod<$1.Empty, $0.AnalyzerInfo>(
          '/pulumirpc.Analyzer/GetAnalyzerInfo',
          ($1.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AnalyzerInfo.fromBuffer(value));
  static final _$getPluginInfo = $grpc.ClientMethod<$1.Empty, $2.PluginInfo>(
      '/pulumirpc.Analyzer/GetPluginInfo',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PluginInfo.fromBuffer(value));
  static final _$configure =
      $grpc.ClientMethod<$0.ConfigureAnalyzerRequest, $1.Empty>(
          '/pulumirpc.Analyzer/Configure',
          ($0.ConfigureAnalyzerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  AnalyzerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AnalyzeResponse> analyze($0.AnalyzeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$analyze, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnalyzeResponse> analyzeStack(
      $0.AnalyzeStackRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$analyzeStack, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemediateResponse> remediate(
      $0.AnalyzeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remediate, request, options: options);
  }

  $grpc.ResponseFuture<$0.AnalyzerInfo> getAnalyzerInfo($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAnalyzerInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.PluginInfo> getPluginInfo($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPluginInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> configure($0.ConfigureAnalyzerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$configure, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.Analyzer')
abstract class AnalyzerServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.Analyzer';

  AnalyzerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AnalyzeRequest, $0.AnalyzeResponse>(
        'Analyze',
        analyze_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnalyzeRequest.fromBuffer(value),
        ($0.AnalyzeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnalyzeStackRequest, $0.AnalyzeResponse>(
        'AnalyzeStack',
        analyzeStack_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AnalyzeStackRequest.fromBuffer(value),
        ($0.AnalyzeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AnalyzeRequest, $0.RemediateResponse>(
        'Remediate',
        remediate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AnalyzeRequest.fromBuffer(value),
        ($0.RemediateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.AnalyzerInfo>(
        'GetAnalyzerInfo',
        getAnalyzerInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.AnalyzerInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.PluginInfo>(
        'GetPluginInfo',
        getPluginInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.PluginInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ConfigureAnalyzerRequest, $1.Empty>(
        'Configure',
        configure_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ConfigureAnalyzerRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.AnalyzeResponse> analyze_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AnalyzeRequest> request) async {
    return analyze(call, await request);
  }

  $async.Future<$0.AnalyzeResponse> analyzeStack_Pre($grpc.ServiceCall call,
      $async.Future<$0.AnalyzeStackRequest> request) async {
    return analyzeStack(call, await request);
  }

  $async.Future<$0.RemediateResponse> remediate_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AnalyzeRequest> request) async {
    return remediate(call, await request);
  }

  $async.Future<$0.AnalyzerInfo> getAnalyzerInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getAnalyzerInfo(call, await request);
  }

  $async.Future<$2.PluginInfo> getPluginInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getPluginInfo(call, await request);
  }

  $async.Future<$1.Empty> configure_Pre($grpc.ServiceCall call,
      $async.Future<$0.ConfigureAnalyzerRequest> request) async {
    return configure(call, await request);
  }

  $async.Future<$0.AnalyzeResponse> analyze(
      $grpc.ServiceCall call, $0.AnalyzeRequest request);
  $async.Future<$0.AnalyzeResponse> analyzeStack(
      $grpc.ServiceCall call, $0.AnalyzeStackRequest request);
  $async.Future<$0.RemediateResponse> remediate(
      $grpc.ServiceCall call, $0.AnalyzeRequest request);
  $async.Future<$0.AnalyzerInfo> getAnalyzerInfo(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$2.PluginInfo> getPluginInfo(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> configure(
      $grpc.ServiceCall call, $0.ConfigureAnalyzerRequest request);
}
