import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:mockito/mockito.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/settings.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart' as callbackpb;
import 'package:pulumi/src/pulumirpc/pulumi/engine.pb.dart' as enginepb;
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart' as enginegrpc;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:test/test.dart';

import '../../mocks/mocks.mocks.dart';

class _FeatureMonitorService extends ResourceMonitorServiceBase {
  final List<String> requestedFeatureIds = [];
  final Map<String, bool> supports;
  bool throwUnimplemented = false;

  _FeatureMonitorService({required this.supports});

  @override
  Future<pulumirpc.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    pulumirpc.SupportsFeatureRequest request,
  ) async {
    requestedFeatureIds.add(request.id);
    if (throwUnimplemented) {
      throw GrpcError.unimplemented('supportsFeature not implemented');
    }
    return pulumirpc.SupportsFeatureResponse()
      ..hasSupport = (supports[request.id] ?? false);
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    pulumirpc.ResourceInvokeRequest request,
  ) async {
    throw GrpcError.unimplemented('invoke not used');
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    pulumirpc.ResourceCallRequest request,
  ) async {
    throw GrpcError.unimplemented('call not used');
  }

  @override
  Future<pulumirpc.ReadResourceResponse> readResource(
    ServiceCall call,
    pulumirpc.ReadResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('readResource not used');
  }

  @override
  Future<pulumirpc.RegisterResourceResponse> registerResource(
    ServiceCall call,
    pulumirpc.RegisterResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('registerResource not used');
  }

  @override
  Future<Empty> registerResourceOutputs(
    ServiceCall call,
    pulumirpc.RegisterResourceOutputsRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerStackTransform(
    ServiceCall call,
    callbackpb.Callback request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerStackInvokeTransform(
    ServiceCall call,
    callbackpb.Callback request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerResourceHook(
    ServiceCall call,
    pulumirpc.RegisterResourceHookRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<Empty> registerErrorHook(
    ServiceCall call,
    pulumirpc.RegisterErrorHookRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<pulumirpc.RegisterPackageResponse> registerPackage(
    ServiceCall call,
    pulumirpc.RegisterPackageRequest request,
  ) async {
    return pulumirpc.RegisterPackageResponse();
  }

  @override
  Future<Empty> signalAndWaitForShutdown(
    ServiceCall call,
    Empty request,
  ) async {
    return Empty();
  }
}

class _RootEngineService extends enginegrpc.EngineServiceBase {
  final List<enginepb.SetRootResourceRequest> setRootRequests = [];
  bool throwUnimplementedOnSetRoot = false;

  @override
  Future<Empty> log(ServiceCall call, enginepb.LogRequest request) async {
    return Empty();
  }

  @override
  Future<enginepb.GetRootResourceResponse> getRootResource(
    ServiceCall call,
    enginepb.GetRootResourceRequest request,
  ) async {
    return enginepb.GetRootResourceResponse();
  }

  @override
  Future<enginepb.SetRootResourceResponse> setRootResource(
    ServiceCall call,
    enginepb.SetRootResourceRequest request,
  ) async {
    if (throwUnimplementedOnSetRoot) {
      throw GrpcError.unimplemented('setRootResource not implemented');
    }
    setRootRequests.add(request);
    return enginepb.SetRootResourceResponse();
  }

  @override
  Future<Empty> startDebugging(
    ServiceCall call,
    enginepb.StartDebuggingRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<enginepb.RequirePulumiVersionResponse> requirePulumiVersion(
    ServiceCall call,
    enginepb.RequirePulumiVersionRequest request,
  ) async {
    return enginepb.RequirePulumiVersionResponse();
  }
}

void main() {
  group('runtime settings feature', () {
    late Runtime runtime;
    late _FeatureMonitorService monitorService;
    late _RootEngineService engineService;
    late Server monitorServer;
    late Server engineServer;

    setUp(() async {
      runtime = Runtime();
      monitorService = _FeatureMonitorService(
        supports: {
          'secrets': true,
          'resourceReferences': true,
          'outputValues': false,
          'deletedWith': true,
          'aliasSpecs': false,
          'transforms': true,
          'invokeTransforms': false,
        },
      );
      engineService = _RootEngineService();
      monitorServer = Server.create(services: [monitorService]);
      engineServer = Server.create(services: [engineService]);
      await monitorServer.serve(address: InternetAddress.loopbackIPv4, port: 0);
      await engineServer.serve(address: InternetAddress.loopbackIPv4, port: 0);

      runtime.disconnectSync();
      runtime.resetOptions(
        project: 'project',
        stack: 'stack',
        organization: 'organization',
        monitorAddr: '127.0.0.1:${monitorServer.port!}',
        engineAddr: '127.0.0.1:${engineServer.port!}',
      );
    });

    tearDown(() async {
      runtime.disconnectSync();
      runtime.resetOptions(
        project: 'project',
        stack: 'stack',
        organization: 'organization',
        monitorAddr: null,
        engineAddr: null,
      );
      await monitorServer.shutdown();
      await engineServer.shutdown();
    });

    test('awaitFeatureSupport negotiates feature flags from monitor', () async {
      await runtime.awaitFeatureSupport();

      expect(runtime.supportsSecrets, isTrue);
      expect(runtime.supportsResourceReferences, isTrue);
      expect(runtime.supportsOutputValues, isFalse);
      expect(runtime.supportsDeletedWith, isTrue);
      expect(runtime.supportsAliasSpecs, isFalse);
      expect(runtime.supportsTransforms, isTrue);
      expect(runtime.supportsInvokeTransforms, isFalse);
      expect(
        monitorService.requestedFeatureIds,
        equals([
          'secrets',
          'resourceReferences',
          'outputValues',
          'deletedWith',
          'aliasSpecs',
          'transforms',
          'invokeTransforms',
        ]),
      );
    });

    test(
      'awaitFeatureSupport tolerates unimplemented supportsFeature RPC',
      () async {
        monitorService.throwUnimplemented = true;

        await runtime.awaitFeatureSupport();

        expect(runtime.supportsSecrets, isFalse);
        expect(runtime.supportsResourceReferences, isFalse);
        expect(runtime.supportsOutputValues, isFalse);
        expect(runtime.supportsDeletedWith, isFalse);
        expect(runtime.supportsAliasSpecs, isFalse);
        expect(runtime.supportsTransforms, isFalse);
        expect(runtime.supportsInvokeTransforms, isFalse);
      },
    );

    test('getCallbacks returns singleton once monitor is available', () {
      final first = runtime.getCallbacks();
      final second = runtime.getCallbacks();

      expect(first, isNotNull);
      expect(identical(first, second), isTrue);
    });

    test('getCallbacks returns null when monitor is unavailable', () {
      runtime.disconnectSync();
      runtime.resetOptions(
        project: 'project',
        stack: 'stack',
        organization: 'organization',
        monitorAddr: null,
        engineAddr: null,
      );
      runtime.settings.monitorAddr = null;

      expect(runtime.getCallbacks(), isNull);
    });

    test('setRootResource sends URN to engine when RPC is supported', () async {
      final component = MockComponentResource();
      when(component.urn).thenReturn(
        Output.create('urn:pulumi:stack::project::pkg:index:Component::root'),
      );

      await runtime.setRootResource(component);

      expect(engineService.setRootRequests, hasLength(1));
      expect(
        engineService.setRootRequests.single.urn,
        'urn:pulumi:stack::project::pkg:index:Component::root',
      );
    });

    test('setRootResource ignores unimplemented engine support', () async {
      final component = MockComponentResource();
      when(component.urn).thenReturn(
        Output.create('urn:pulumi:stack::project::pkg:index:Component::root'),
      );
      engineService.throwUnimplementedOnSetRoot = true;

      await expectLater(runtime.setRootResource(component), completes);
      expect(engineService.setRootRequests, isEmpty);
    });

    test(
      'setRootResource returns immediately when no engine is configured',
      () async {
        runtime.disconnectSync();
        runtime.resetOptions(
          project: 'project',
          stack: 'stack',
          organization: 'organization',
          monitorAddr: '127.0.0.1:${monitorServer.port!}',
          engineAddr: null,
        );
        runtime.settings.engineAddr = null;

        final component = MockComponentResource();
        when(component.urn).thenReturn(
          Output.create('urn:pulumi:stack::project::pkg:index:Component::root'),
        );

        await expectLater(runtime.setRootResource(component), completes);
        expect(engineService.setRootRequests, isEmpty);
      },
    );
  });
}
