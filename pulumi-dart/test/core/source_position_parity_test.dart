import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/source.pb.dart' as sourcepb;
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../mocks/mock_engine.dart';
import '../test_utils/monitor_test_utils.dart';

class _SourcePositionMonitor extends BaseMonitor {
  final List<RegisterResourceRequest> registerRequests = [];
  final List<ReadResourceRequest> readRequests = [];
  ResourceInvokeRequest? invokeRequest;
  ResourceCallRequest? callRequest;

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    return Future.value(monitorpkg.SupportsFeatureResponse(true));
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    registerRequests.add(request);
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id';
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    readRequests.add(request);
    return ReadResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..properties = await StructConverter.toStruct(const <String, dynamic>{});
  }

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    invokeRequest = request;
    return InvokeResponse(
      return_1: await StructConverter.toStruct(const {'result': 'ok'}),
    );
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    callRequest = request;
    return CallResponse(
      return_1: await StructConverter.toStruct(const {'result': 'ok'}),
    );
  }
}

class _SourceCustomResource extends CustomResource {
  _SourceCustomResource(String name, {required CustomResourceOptions options})
    : super('test:index:MyResource', name, const {}, options);
}

class _SourceComponentResource extends ComponentResource {
  _SourceComponentResource(
    String name, {
    required ComponentResourceOptions options,
  }) : super('test:index:MyComponent', name, const {}, options);
}

void _expectSourceMetadata(
  sourcepb.SourcePosition sourcePosition,
  sourcepb.StackTrace stackTrace,
) {
  expect(sourcePosition.uri, isNotEmpty);
  expect(sourcePosition.line, greaterThan(0));
  expect(sourcePosition.column, greaterThan(0));
  expect(stackTrace.frames, isNotEmpty);
  final firstFrame = stackTrace.frames.first.pc;
  expect(firstFrame.uri, equals(sourcePosition.uri));
  expect(firstFrame.line, equals(sourcePosition.line));
  expect(firstFrame.column, equals(sourcePosition.column));
}

void main() {
  group('source_position parity', () {
    late _SourcePositionMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _SourcePositionMonitor();
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test(
      'register/read/invoke/call requests include source position and stack trace',
      () async {
        _SourceCustomResource('custom', options: CustomResourceOptions());
        _SourceComponentResource(
          'component',
          options: ComponentResourceOptions(),
        );
        _SourceCustomResource(
          'read',
          options: CustomResourceOptions(id: Input.fromValue('existing-id')),
        );

        await deployment.invoke<Map<String, dynamic>>('test:index:get', {});
        await deployment.callWithResult<Map<String, dynamic>>(
          'test:index:method',
          {},
        );
        await deployment.registerOutputs();

        expect(monitor.registerRequests, isNotEmpty);
        expect(monitor.readRequests, isNotEmpty);
        expect(monitor.invokeRequest, isNotNull);
        expect(monitor.callRequest, isNotNull);

        for (final request in monitor.registerRequests) {
          _expectSourceMetadata(request.sourcePosition, request.stackTrace);
        }
        for (final request in monitor.readRequests) {
          _expectSourceMetadata(request.sourcePosition, request.stackTrace);
        }
        _expectSourceMetadata(
          monitor.invokeRequest!.sourcePosition,
          monitor.invokeRequest!.stackTrace,
        );
        _expectSourceMetadata(
          monitor.callRequest!.sourcePosition,
          monitor.callRequest!.stackTrace,
        );
      },
    );
  });
}
