import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:meta/meta.dart';

import 'deployment/deployment.dart';
import 'engine.dart';
import 'engine_logger.dart';
import 'monitor.dart' as mon;
import 'output.dart';
import 'pulumirpc/pulumi/provider.pb.dart';
import 'pulumirpc/pulumi/resource.pbgrpc.dart';
import 'resource/resource.dart';
import 'struct_converter.dart';

@visibleForTesting
class MockResourceArgs {
  final String type;
  final String name;
  final Map<String, dynamic> inputs;
  final String? provider;
  final String? id;
  final bool custom;

  const MockResourceArgs({
    required this.type,
    required this.name,
    required this.inputs,
    this.provider,
    this.id,
    required this.custom,
  });
}

@visibleForTesting
class MockCallArgs {
  final String token;
  final Map<String, dynamic> args;
  final String? provider;

  const MockCallArgs({required this.token, required this.args, this.provider});
}

@visibleForTesting
class MockRegisterResourceOutputsRequest {
  final String urn;
  final Map<String, Output<dynamic>> outputs;

  const MockRegisterResourceOutputsRequest({
    required this.urn,
    required this.outputs,
  });
}

@visibleForTesting
abstract class Mocks {
  Future<(String?, Map<String, dynamic>)> newResource(MockResourceArgs args);

  Future<Map<String, dynamic>> call(MockCallArgs args);

  Future<void> registerResourceOutputs(
    MockRegisterResourceOutputsRequest args,
  ) async {}
}

@visibleForTesting
class RuntimeFacade {
  const RuntimeFacade();

  void setMocks(
    Mocks mocks, {
    String? project,
    String? stack,
    bool? preview,
    String? organization,
  }) {
    final deployment = DeploymentImpl.createForMocks(
      organizationName: organization ?? 'organization',
      projectName: project ?? 'project',
      stackName: stack ?? 'stack',
      isDryRun: preview ?? false,
      monitor: _MockMonitor(mocks),
      engine: _MockEngine(),
    );
    DeploymentImpl.setTestInstance(deployment);
  }

  void clearMocks() {
    DeploymentImpl.clearMockInstance();
  }
}

@visibleForTesting
const RuntimeFacade runtime = RuntimeFacade();

class _MockEngine implements Engine {
  @override
  Future<void> log(LogRequest request) async {}
}

class _MockMonitor implements mon.Monitor {
  final Mocks _mocks;
  final Map<String, dynamic> _registeredResources = {};

  _MockMonitor(this._mocks);

  @override
  ResourceMonitorClient get client =>
      throw StateError('_MockMonitor.client is not used by this harness');

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    final args = _toDartMap(request.args);

    if (request.tok == 'pulumi:pulumi:getResource') {
      final urn = args['urn'] as String;
      final registeredResource = _registeredResources[urn];
      if (registeredResource == null) {
        throw Exception('Unknown resource $urn');
      }
      return InvokeResponse(
        return_1: await _serializeAsync(registeredResource),
      );
    }

    final result = await _mocks.call(
      MockCallArgs(token: request.tok, args: args, provider: request.provider),
    );
    return InvokeResponse(return_1: await _serializeAsync(result));
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    final args = _toDartMap(request.args);

    final result = await _mocks.call(
      MockCallArgs(token: request.tok, args: args, provider: request.provider),
    );
    return CallResponse(return_1: await _serializeAsync(result));
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    return RegisterPackageResponse(ref: '${request.name}-${request.version}');
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    final (id, state) = await _mocks.newResource(
      MockResourceArgs(
        type: request.type,
        name: request.name,
        inputs: _toDartMap(request.properties),
        provider: request.provider,
        id: request.id,
        custom: request.type != DeploymentImpl.rootPulumiStackTypeName,
      ),
    );

    final urn = _newUrn(request.parent, request.type, request.name);
    final serializedState = await _serializeToDartMap(state);

    _registeredResources[urn] = {
      'urn': urn,
      'id': id,
      'state': serializedState,
    };

    return ReadResourceResponse(
      urn: urn,
      properties: await _toStruct(serializedState),
    );
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    if (request.type == DeploymentImpl.rootPulumiStackTypeName) {
      return RegisterResourceResponse(
        urn: _newUrn(request.parent, request.type, request.name),
        object: Struct(),
      );
    }

    final (id, state) = await _mocks.newResource(
      MockResourceArgs(
        type: request.type,
        name: request.name,
        inputs: _toDartMap(request.object),
        provider: request.provider,
        id: request.importId,
        custom: request.custom,
      ),
    );

    final urn = _newUrn(request.parent, request.type, request.name);
    final serializedState = await _serializeToDartMap(state);

    _registeredResources[urn] = {
      'urn': urn,
      'id': id ?? request.importId,
      'state': serializedState,
    };

    return RegisterResourceResponse(
      id: id ?? request.importId,
      urn: urn,
      object: await _toStruct(serializedState),
    );
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    final outputs = <String, Output<dynamic>>{};
    for (final entry in request.outputs.fields.entries) {
      outputs[entry.key] = Output.create(
        StructConverter.fromValue(entry.value),
      );
    }

    final mockRequest = MockRegisterResourceOutputsRequest(
      urn: request.urn,
      outputs: outputs,
    );
    await _mocks.registerResourceOutputs(mockRequest);
    return Empty();
  }

  @override
  Future<mon.SupportsFeatureResponse> supportsFeature(
    mon.SupportsFeatureRequest request,
  ) {
    return Future.value(mon.SupportsFeatureResponse(true));
  }

  String _newUrn(String? parent, String type, String name) {
    if (parent != null && parent.isNotEmpty) {
      final qualifiedType = parent.split('::')[2];
      final parentType = qualifiedType.split(r'$').first;
      type = '$parentType\$$type';
    }
    return 'urn:pulumi:${DeploymentImpl.instance.stackName}::${DeploymentImpl.instance.projectName}::$type::$name';
  }

  Map<String, dynamic> _toDartMap(Struct struct) {
    return StructConverter.fromStruct(struct);
  }

  Future<Map<String, dynamic>> _serializeToDartMap(dynamic value) async {
    if (value is Map) {
      return value.map((key, entry) => MapEntry(key.toString(), entry));
    }

    final serialized = await StructConverter.toValue(value);
    final decoded = StructConverter.fromValue(serialized);
    if (decoded is Map) {
      return decoded.map((key, entry) => MapEntry(key.toString(), entry));
    }

    throw StateError(
      'Mock monitor expected Map-compatible value but got ${decoded.runtimeType}',
    );
  }

  Future<Struct> _serializeAsync(dynamic value) async {
    final dict = await _serializeToDartMap(value);
    return _toStruct(dict);
  }

  Future<Struct> _toStruct(Map<String, dynamic> map) {
    return StructConverter.toStruct(map);
  }
}
