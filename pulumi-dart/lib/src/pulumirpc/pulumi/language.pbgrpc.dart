//
//  Generated code. Do not modify.
//  source: pulumi/language.proto
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
import 'language.pb.dart' as $6;
import 'plugin.pb.dart' as $2;

export 'language.pb.dart';

@$pb.GrpcServiceName('pulumirpc.LanguageRuntime')
class LanguageRuntimeClient extends $grpc.Client {
  static final _$getRequiredPlugins = $grpc.ClientMethod<
          $6.GetRequiredPluginsRequest, $6.GetRequiredPluginsResponse>(
      '/pulumirpc.LanguageRuntime/GetRequiredPlugins',
      ($6.GetRequiredPluginsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.GetRequiredPluginsResponse.fromBuffer(value));
  static final _$run = $grpc.ClientMethod<$6.RunRequest, $6.RunResponse>(
      '/pulumirpc.LanguageRuntime/Run',
      ($6.RunRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RunResponse.fromBuffer(value));
  static final _$getPluginInfo = $grpc.ClientMethod<$1.Empty, $2.PluginInfo>(
      '/pulumirpc.LanguageRuntime/GetPluginInfo',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PluginInfo.fromBuffer(value));
  static final _$installDependencies = $grpc.ClientMethod<
          $6.InstallDependenciesRequest, $6.InstallDependenciesResponse>(
      '/pulumirpc.LanguageRuntime/InstallDependencies',
      ($6.InstallDependenciesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.InstallDependenciesResponse.fromBuffer(value));
  static final _$runtimeOptionsPrompts =
      $grpc.ClientMethod<$6.RuntimeOptionsRequest, $6.RuntimeOptionsResponse>(
          '/pulumirpc.LanguageRuntime/RuntimeOptionsPrompts',
          ($6.RuntimeOptionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RuntimeOptionsResponse.fromBuffer(value));
  static final _$about = $grpc.ClientMethod<$6.AboutRequest, $6.AboutResponse>(
      '/pulumirpc.LanguageRuntime/About',
      ($6.AboutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AboutResponse.fromBuffer(value));
  static final _$getProgramDependencies = $grpc.ClientMethod<
          $6.GetProgramDependenciesRequest, $6.GetProgramDependenciesResponse>(
      '/pulumirpc.LanguageRuntime/GetProgramDependencies',
      ($6.GetProgramDependenciesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.GetProgramDependenciesResponse.fromBuffer(value));
  static final _$runPlugin =
      $grpc.ClientMethod<$6.RunPluginRequest, $6.RunPluginResponse>(
          '/pulumirpc.LanguageRuntime/RunPlugin',
          ($6.RunPluginRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.RunPluginResponse.fromBuffer(value));
  static final _$generateProgram =
      $grpc.ClientMethod<$6.GenerateProgramRequest, $6.GenerateProgramResponse>(
          '/pulumirpc.LanguageRuntime/GenerateProgram',
          ($6.GenerateProgramRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GenerateProgramResponse.fromBuffer(value));
  static final _$generateProject =
      $grpc.ClientMethod<$6.GenerateProjectRequest, $6.GenerateProjectResponse>(
          '/pulumirpc.LanguageRuntime/GenerateProject',
          ($6.GenerateProjectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GenerateProjectResponse.fromBuffer(value));
  static final _$generatePackage =
      $grpc.ClientMethod<$6.GeneratePackageRequest, $6.GeneratePackageResponse>(
          '/pulumirpc.LanguageRuntime/GeneratePackage',
          ($6.GeneratePackageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.GeneratePackageResponse.fromBuffer(value));
  static final _$pack = $grpc.ClientMethod<$6.PackRequest, $6.PackResponse>(
      '/pulumirpc.LanguageRuntime/Pack',
      ($6.PackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.PackResponse.fromBuffer(value));

  LanguageRuntimeClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.GetRequiredPluginsResponse> getRequiredPlugins(
      $6.GetRequiredPluginsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRequiredPlugins, request, options: options);
  }

  $grpc.ResponseFuture<$6.RunResponse> run($6.RunRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$run, request, options: options);
  }

  $grpc.ResponseFuture<$2.PluginInfo> getPluginInfo($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPluginInfo, request, options: options);
  }

  $grpc.ResponseStream<$6.InstallDependenciesResponse> installDependencies(
      $6.InstallDependenciesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$installDependencies, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$6.RuntimeOptionsResponse> runtimeOptionsPrompts(
      $6.RuntimeOptionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$runtimeOptionsPrompts, request, options: options);
  }

  $grpc.ResponseFuture<$6.AboutResponse> about($6.AboutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$about, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetProgramDependenciesResponse>
      getProgramDependencies($6.GetProgramDependenciesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProgramDependencies, request,
        options: options);
  }

  $grpc.ResponseStream<$6.RunPluginResponse> runPlugin(
      $6.RunPluginRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$runPlugin, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$6.GenerateProgramResponse> generateProgram(
      $6.GenerateProgramRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateProgram, request, options: options);
  }

  $grpc.ResponseFuture<$6.GenerateProjectResponse> generateProject(
      $6.GenerateProjectRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateProject, request, options: options);
  }

  $grpc.ResponseFuture<$6.GeneratePackageResponse> generatePackage(
      $6.GeneratePackageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generatePackage, request, options: options);
  }

  $grpc.ResponseFuture<$6.PackResponse> pack($6.PackRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pack, request, options: options);
  }
}

@$pb.GrpcServiceName('pulumirpc.LanguageRuntime')
abstract class LanguageRuntimeServiceBase extends $grpc.Service {
  $core.String get $name => 'pulumirpc.LanguageRuntime';

  LanguageRuntimeServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.GetRequiredPluginsRequest,
            $6.GetRequiredPluginsResponse>(
        'GetRequiredPlugins',
        getRequiredPlugins_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetRequiredPluginsRequest.fromBuffer(value),
        ($6.GetRequiredPluginsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RunRequest, $6.RunResponse>(
        'Run',
        run_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RunRequest.fromBuffer(value),
        ($6.RunResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $2.PluginInfo>(
        'GetPluginInfo',
        getPluginInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($2.PluginInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.InstallDependenciesRequest,
            $6.InstallDependenciesResponse>(
        'InstallDependencies',
        installDependencies_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $6.InstallDependenciesRequest.fromBuffer(value),
        ($6.InstallDependenciesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RuntimeOptionsRequest,
            $6.RuntimeOptionsResponse>(
        'RuntimeOptionsPrompts',
        runtimeOptionsPrompts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.RuntimeOptionsRequest.fromBuffer(value),
        ($6.RuntimeOptionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.AboutRequest, $6.AboutResponse>(
        'About',
        about_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.AboutRequest.fromBuffer(value),
        ($6.AboutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetProgramDependenciesRequest,
            $6.GetProgramDependenciesResponse>(
        'GetProgramDependencies',
        getProgramDependencies_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetProgramDependenciesRequest.fromBuffer(value),
        ($6.GetProgramDependenciesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RunPluginRequest, $6.RunPluginResponse>(
        'RunPlugin',
        runPlugin_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $6.RunPluginRequest.fromBuffer(value),
        ($6.RunPluginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GenerateProgramRequest,
            $6.GenerateProgramResponse>(
        'GenerateProgram',
        generateProgram_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GenerateProgramRequest.fromBuffer(value),
        ($6.GenerateProgramResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GenerateProjectRequest,
            $6.GenerateProjectResponse>(
        'GenerateProject',
        generateProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GenerateProjectRequest.fromBuffer(value),
        ($6.GenerateProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GeneratePackageRequest,
            $6.GeneratePackageResponse>(
        'GeneratePackage',
        generatePackage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GeneratePackageRequest.fromBuffer(value),
        ($6.GeneratePackageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.PackRequest, $6.PackResponse>(
        'Pack',
        pack_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.PackRequest.fromBuffer(value),
        ($6.PackResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.GetRequiredPluginsResponse> getRequiredPlugins_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetRequiredPluginsRequest> request) async {
    return getRequiredPlugins(call, await request);
  }

  $async.Future<$6.RunResponse> run_Pre(
      $grpc.ServiceCall call, $async.Future<$6.RunRequest> request) async {
    return run(call, await request);
  }

  $async.Future<$2.PluginInfo> getPluginInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getPluginInfo(call, await request);
  }

  $async.Stream<$6.InstallDependenciesResponse> installDependencies_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.InstallDependenciesRequest> request) async* {
    yield* installDependencies(call, await request);
  }

  $async.Future<$6.RuntimeOptionsResponse> runtimeOptionsPrompts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.RuntimeOptionsRequest> request) async {
    return runtimeOptionsPrompts(call, await request);
  }

  $async.Future<$6.AboutResponse> about_Pre(
      $grpc.ServiceCall call, $async.Future<$6.AboutRequest> request) async {
    return about(call, await request);
  }

  $async.Future<$6.GetProgramDependenciesResponse> getProgramDependencies_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GetProgramDependenciesRequest> request) async {
    return getProgramDependencies(call, await request);
  }

  $async.Stream<$6.RunPluginResponse> runPlugin_Pre($grpc.ServiceCall call,
      $async.Future<$6.RunPluginRequest> request) async* {
    yield* runPlugin(call, await request);
  }

  $async.Future<$6.GenerateProgramResponse> generateProgram_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GenerateProgramRequest> request) async {
    return generateProgram(call, await request);
  }

  $async.Future<$6.GenerateProjectResponse> generateProject_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GenerateProjectRequest> request) async {
    return generateProject(call, await request);
  }

  $async.Future<$6.GeneratePackageResponse> generatePackage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.GeneratePackageRequest> request) async {
    return generatePackage(call, await request);
  }

  $async.Future<$6.PackResponse> pack_Pre(
      $grpc.ServiceCall call, $async.Future<$6.PackRequest> request) async {
    return pack(call, await request);
  }

  $async.Future<$6.GetRequiredPluginsResponse> getRequiredPlugins(
      $grpc.ServiceCall call, $6.GetRequiredPluginsRequest request);
  $async.Future<$6.RunResponse> run(
      $grpc.ServiceCall call, $6.RunRequest request);
  $async.Future<$2.PluginInfo> getPluginInfo(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Stream<$6.InstallDependenciesResponse> installDependencies(
      $grpc.ServiceCall call, $6.InstallDependenciesRequest request);
  $async.Future<$6.RuntimeOptionsResponse> runtimeOptionsPrompts(
      $grpc.ServiceCall call, $6.RuntimeOptionsRequest request);
  $async.Future<$6.AboutResponse> about(
      $grpc.ServiceCall call, $6.AboutRequest request);
  $async.Future<$6.GetProgramDependenciesResponse> getProgramDependencies(
      $grpc.ServiceCall call, $6.GetProgramDependenciesRequest request);
  $async.Stream<$6.RunPluginResponse> runPlugin(
      $grpc.ServiceCall call, $6.RunPluginRequest request);
  $async.Future<$6.GenerateProgramResponse> generateProgram(
      $grpc.ServiceCall call, $6.GenerateProgramRequest request);
  $async.Future<$6.GenerateProjectResponse> generateProject(
      $grpc.ServiceCall call, $6.GenerateProjectRequest request);
  $async.Future<$6.GeneratePackageResponse> generatePackage(
      $grpc.ServiceCall call, $6.GeneratePackageRequest request);
  $async.Future<$6.PackResponse> pack(
      $grpc.ServiceCall call, $6.PackRequest request);
}
