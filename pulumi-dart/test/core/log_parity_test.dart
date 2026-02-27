import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/log.dart' as runtime_log;
import 'package:pulumi/src/pulumirpc/pulumi/engine.pbgrpc.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/settings.dart';
import 'package:pulumi/src/store/store.dart' as runtime_store;
import 'package:test/test.dart';

class _RecordingEngineService extends EngineServiceBase {
  final List<LogRequest> requests = [];

  @override
  Future<Empty> log(ServiceCall call, LogRequest request) async {
    requests.add(request);
    return Empty();
  }

  @override
  Future<GetRootResourceResponse> getRootResource(
    ServiceCall call,
    GetRootResourceRequest request,
  ) async {
    return GetRootResourceResponse();
  }

  @override
  Future<SetRootResourceResponse> setRootResource(
    ServiceCall call,
    SetRootResourceRequest request,
  ) async {
    return SetRootResourceResponse();
  }

  @override
  Future<Empty> startDebugging(
    ServiceCall call,
    StartDebuggingRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<RequirePulumiVersionResponse> requirePulumiVersion(
    ServiceCall call,
    RequirePulumiVersionRequest request,
  ) async {
    return RequirePulumiVersionResponse();
  }
}

class _FailingEngineService extends EngineServiceBase {
  @override
  Future<Empty> log(ServiceCall call, LogRequest request) async {
    throw GrpcError.internal('log failed');
  }

  @override
  Future<GetRootResourceResponse> getRootResource(
    ServiceCall call,
    GetRootResourceRequest request,
  ) async {
    return GetRootResourceResponse();
  }

  @override
  Future<SetRootResourceResponse> setRootResource(
    ServiceCall call,
    SetRootResourceRequest request,
  ) async {
    return SetRootResourceResponse();
  }

  @override
  Future<Empty> startDebugging(
    ServiceCall call,
    StartDebuggingRequest request,
  ) async {
    return Empty();
  }

  @override
  Future<RequirePulumiVersionResponse> requirePulumiVersion(
    ServiceCall call,
    RequirePulumiVersionRequest request,
  ) async {
    return RequirePulumiVersionResponse();
  }
}

void main() {
  group('runtime log parity', () {
    setUp(() {
      Runtime().disconnectSync();
      Runtime().resetOptions(
        project: 'project',
        stack: 'stack',
        preview: false,
        engineAddr: null,
        monitorAddr: null,
      );
      runtime_store.getStore().logErrorCount = 0;
      runtime_log.lastLog = Future.value();
    });

    tearDown(() {
      Runtime().disconnectSync();
    });

    test('debug/info/warn/error complete without engine', () async {
      await runtime_log.debug('debug message');
      await runtime_log.info('info message');
      await runtime_log.warn('warn message');
      await runtime_log.error('error message');

      expect(runtime_log.hasErrors(), isTrue);
      expect(runtime_store.getStore().logErrorCount, equals(1));
    });

    test(
      'info logs through engine client when runtime engine is configured',
      () async {
        final service = _RecordingEngineService();
        final server = Server.create(services: [service]);
        await server.serve(address: InternetAddress.loopbackIPv4, port: 0);
        addTearDown(() async {
          await server.shutdown();
        });

        Runtime().resetOptions(
          project: 'project',
          stack: 'stack',
          preview: false,
          engineAddr: '127.0.0.1:${server.port}',
          monitorAddr: null,
        );

        final resource = DependencyResource(
          'urn:pulumi:stack::project::pkg:index:Thing::example',
        );
        final resourceUrn = await resource.urn.getValue();

        await runtime_log.info('hello', streamId: 42, ephemeral: true);
        await runtime_log.warn('warn', resource: resource);
        await runtime_log.error('error', resource: resource);

        expect(service.requests, hasLength(3));

        final infoRequest = service.requests[0];
        expect(infoRequest.message, equals('hello'));
        expect(infoRequest.severity, equals(LogSeverity.INFO));
        expect(infoRequest.streamId, equals(42));
        expect(infoRequest.ephemeral, isTrue);

        final warnRequest = service.requests[1];
        expect(warnRequest.message, equals('warn'));
        expect(warnRequest.severity, equals(LogSeverity.WARNING));
        expect(warnRequest.urn, equals(resourceUrn));

        final errorRequest = service.requests[2];
        expect(errorRequest.message, equals('error'));
        expect(errorRequest.severity, equals(LogSeverity.ERROR));
        expect(errorRequest.urn, equals(resourceUrn));
      },
    );

    test(
      'log swallows engine RPC failures and preserves call ordering',
      () async {
        final service = _FailingEngineService();
        final server = Server.create(services: [service]);
        await server.serve(address: InternetAddress.loopbackIPv4, port: 0);
        addTearDown(() async {
          await server.shutdown();
        });

        Runtime().resetOptions(
          project: 'project',
          stack: 'stack',
          preview: false,
          engineAddr: '127.0.0.1:${server.port}',
          monitorAddr: null,
        );

        await runtime_log.info('first failure');
        await runtime_log.debug('second failure');
      },
    );
  });
}
