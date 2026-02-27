import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/log.dart' as runtime_log;
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/settings.dart';
import 'package:pulumi/src/pulumirpc/pulumi/callback.pb.dart' as callbackpb;
import 'package:pulumi/src/pulumirpc/pulumi/engine.pb.dart' as enginepb;
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart' as enginegrpc;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart' as providerpb;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/store/store.dart';
import 'package:test/test.dart';

import '../mocks/mocks.mocks.dart';

class _CapturingEngineService extends enginegrpc.EngineServiceBase {
  final List<enginepb.LogRequest> requests = [];
  bool failLog = false;

  @override
  Future<Empty> log(ServiceCall call, enginepb.LogRequest request) async {
    if (failLog) {
      throw GrpcError.unknown('engine-log-failed');
    }
    requests.add(request);
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

class _CapturingMonitorService extends ResourceMonitorServiceBase {
  pulumirpc.SupportsFeatureRequest? supportsFeatureRequest;
  pulumirpc.ResourceInvokeRequest? invokeRequest;
  pulumirpc.ResourceCallRequest? callRequest;
  pulumirpc.RegisterPackageRequest? registerPackageRequest;
  pulumirpc.ReadResourceRequest? readResourceRequest;
  pulumirpc.RegisterResourceRequest? registerResourceRequest;
  pulumirpc.RegisterResourceOutputsRequest? registerResourceOutputsRequest;
  bool supportsFeatureValue = true;

  @override
  Future<pulumirpc.SupportsFeatureResponse> supportsFeature(
    ServiceCall call,
    pulumirpc.SupportsFeatureRequest request,
  ) async {
    supportsFeatureRequest = request;
    return pulumirpc.SupportsFeatureResponse()
      ..hasSupport = supportsFeatureValue;
  }

  @override
  Future<providerpb.InvokeResponse> invoke(
    ServiceCall call,
    pulumirpc.ResourceInvokeRequest request,
  ) async {
    invokeRequest = request;
    return providerpb.InvokeResponse(
      return_1: Struct()..fields['invoked'] = (Value()..stringValue = 'ok'),
    );
  }

  @override
  Future<providerpb.CallResponse> call(
    ServiceCall call,
    pulumirpc.ResourceCallRequest request,
  ) async {
    callRequest = request;
    return providerpb.CallResponse(
      return_1: Struct()..fields['called'] = (Value()..numberValue = 1),
    );
  }

  @override
  Future<pulumirpc.RegisterPackageResponse> registerPackage(
    ServiceCall call,
    pulumirpc.RegisterPackageRequest request,
  ) async {
    registerPackageRequest = request;
    return pulumirpc.RegisterPackageResponse()..ref = 'pkg-ref';
  }

  @override
  Future<pulumirpc.ReadResourceResponse> readResource(
    ServiceCall call,
    pulumirpc.ReadResourceRequest request,
  ) async {
    readResourceRequest = request;
    return pulumirpc.ReadResourceResponse()
      ..urn = 'urn:pulumi:stack::project::pkg:index:Type::name'
      ..properties = (Struct()
        ..fields['fromRead'] = (Value()..boolValue = true));
  }

  @override
  Future<pulumirpc.RegisterResourceResponse> registerResource(
    ServiceCall call,
    pulumirpc.RegisterResourceRequest request,
  ) async {
    registerResourceRequest = request;
    return pulumirpc.RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::pkg:index:Type::name'
      ..id = 'resource-id'
      ..object = (Struct()
        ..fields['fromRegister'] = (Value()..stringValue = 'ok'));
  }

  @override
  Future<Empty> registerResourceOutputs(
    ServiceCall call,
    pulumirpc.RegisterResourceOutputsRequest request,
  ) async {
    registerResourceOutputsRequest = request;
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
  Future<Empty> signalAndWaitForShutdown(
    ServiceCall call,
    Empty request,
  ) async {
    return Empty();
  }
}

void main() {
  group('runtime wrapper parity', () {
    late _CapturingEngineService engineService;
    late _CapturingMonitorService monitorService;
    late Server engineServer;
    late Server monitorServer;
    late ClientChannel engineChannel;
    late ClientChannel monitorChannel;

    setUp(() async {
      engineService = _CapturingEngineService();
      monitorService = _CapturingMonitorService();
      engineServer = Server.create(services: [engineService]);
      monitorServer = Server.create(services: [monitorService]);
      await engineServer.serve(address: InternetAddress.loopbackIPv4, port: 0);
      await monitorServer.serve(address: InternetAddress.loopbackIPv4, port: 0);

      engineChannel = ClientChannel(
        '127.0.0.1',
        port: engineServer.port!,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      monitorChannel = ClientChannel(
        '127.0.0.1',
        port: monitorServer.port!,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      Runtime().resetOptions(
        project: 'project',
        stack: 'stack',
        organization: 'organization',
        engineAddr: null,
        monitorAddr: null,
      );
      getStore().logErrorCount = 0;
      runtime_log.lastLog = Future.value();
    });

    tearDown(() async {
      Runtime().disconnectSync();
      Runtime().resetOptions(
        project: 'project',
        stack: 'stack',
        organization: 'organization',
        engineAddr: null,
        monitorAddr: null,
      );
      getStore().logErrorCount = 0;
      runtime_log.lastLog = Future.value();
      await engineChannel.shutdown();
      await monitorChannel.shutdown();
      await engineServer.shutdown();
      await monitorServer.shutdown();
    });

    test('Engine.log sends grpc request fields through wrapper', () async {
      final engine = Engine(engineChannel);

      await engine.log(
        LogRequest(
          severity: LogSeverity.warning,
          message: 'warning-message',
          urn: 'urn:pulumi:test',
          streamId: 42,
          ephemeral: true,
        ),
      );

      expect(engineService.requests, hasLength(1));
      final request = engineService.requests.single;
      expect(request.message, 'warning-message');
      expect(request.urn, 'urn:pulumi:test');
      expect(request.streamId, 42);
      expect(request.ephemeral, isTrue);
    });

    test('Engine.log swallows grpc failures', () async {
      final engine = Engine(engineChannel);
      engineService.failLog = true;

      await expectLater(
        engine.log(
          LogRequest(
            severity: LogSeverity.error,
            message: 'boom',
            urn: '',
            streamId: 0,
            ephemeral: false,
          ),
        ),
        completes,
      );
    });

    test(
      'Monitor wrapper forwards requests and returns typed responses',
      () async {
        final monitor = monitorpkg.Monitor(monitorChannel);
        final supports = await monitor.supportsFeature(
          monitorpkg.SupportsFeatureRequest('invokeTransforms'),
        );
        expect(supports.hasSupport, isTrue);
        expect(monitorService.supportsFeatureRequest!.id, 'invokeTransforms');

        final invokeResponse = await monitor.invoke(
          pulumirpc.ResourceInvokeRequest(),
        );
        expect(invokeResponse.return_1.fields['invoked']!.stringValue, 'ok');

        final callResponse = await monitor.call(
          pulumirpc.ResourceCallRequest(),
        );
        expect(callResponse.return_1.fields['called']!.numberValue, 1);

        final registerPackageResponse = await monitor.registerPackage(
          pulumirpc.RegisterPackageRequest()
            ..name = 'pulumi-test'
            ..version = '1.0.0',
        );
        expect(registerPackageResponse.ref, 'pkg-ref');
        expect(monitorService.registerPackageRequest!.name, 'pulumi-test');

        final resource = MockResource();
        final readResponse = await monitor.readResource(
          resource,
          pulumirpc.ReadResourceRequest()
            ..type = 'pkg:index:Type'
            ..name = 'name',
        );
        expect(readResponse.urn, contains('pkg:index:Type::name'));

        final registerResponse = await monitor.registerResource(
          resource,
          pulumirpc.RegisterResourceRequest()
            ..type = 'pkg:index:Type'
            ..name = 'name',
        );
        expect(registerResponse.id, 'resource-id');
        expect(
          registerResponse.object.fields['fromRegister']!.stringValue,
          'ok',
        );

        final empty = await monitor.registerResourceOutputs(
          pulumirpc.RegisterResourceOutputsRequest()
            ..urn = 'urn:pulumi:stack::project::pkg:index:Type::name',
        );
        expect(empty, isA<Empty>());
        expect(monitorService.registerResourceOutputsRequest, isNotNull);
      },
    );

    test('runtime log helpers print fallbacks without an engine', () async {
      final lines = <String>[];

      await runZoned(
        () async {
          await runtime_log.debug('debug-no-engine');
          await runtime_log.info('info-no-engine');
          await runtime_log.warn('warn-no-engine');
          await runtime_log.error('error-no-engine');
        },
        zoneSpecification: ZoneSpecification(
          print: (_, _, _, line) => lines.add(line),
        ),
      );

      expect(lines, contains('info: [runtime] info-no-engine'));
      expect(lines, contains('warning: [runtime] warn-no-engine'));
      expect(lines, contains('error: [runtime] error-no-engine'));
      expect(runtime_log.hasErrors(), isTrue);
    });

    test(
      'runtime log() sends requests with defaults through EngineClient',
      () async {
        final engineClient = enginegrpc.EngineClient(engineChannel);

        await runtime_log.log(
          engineClient,
          enginepb.LogSeverity.INFO,
          'from-log-helper',
          null,
          null,
          null,
        );

        expect(engineService.requests, hasLength(1));
        final request = engineService.requests.single;
        expect(request.message, 'from-log-helper');
        expect(request.streamId, 0);
        expect(request.ephemeral, isFalse);
        expect(request.urn, isEmpty);
      },
    );

    test('runtime log() suppresses debug delivery failures', () async {
      final engineClient = enginegrpc.EngineClient(engineChannel);
      engineService.failLog = true;
      final lines = <String>[];

      await runZoned(
        () async {
          await runtime_log.log(
            engineClient,
            enginepb.LogSeverity.DEBUG,
            'debug-failure',
            null,
            null,
            null,
          );
        },
        zoneSpecification: ZoneSpecification(
          print: (_, _, _, line) => lines.add(line),
        ),
      );

      expect(
        lines.where((line) => line.contains('failed to deliver log message')),
        isEmpty,
      );
    });
  });
}
