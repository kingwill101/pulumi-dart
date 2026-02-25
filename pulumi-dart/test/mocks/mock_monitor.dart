import 'package:pulumi/pulumi.dart' show DeploymentImpl, Stack;
import 'package:pulumi/src/monitor.dart' as mon;
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/pulumirpc/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/pulumirpc/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/resource.dart';

import 'mocks.dart';

class MockMonitor implements mon.Monitor {
  final IMocks _mocks;
  final Map<String, dynamic> _registeredResources = {};
  final List<Resource> resources = [];

  MockMonitor(this._mocks);

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    final args = _toDartMap(request.args);

    if (request.tok == "pulumi:pulumi:getResource") {
      final urn = args["urn"] as String;
      final registeredResource = _registeredResources[urn];
      if (registeredResource == null) {
        throw Exception("Unknown resource $urn");
      }
      return InvokeResponse(
          return_1: await _serializeAsync(registeredResource));
    }

    final result = await _mocks.call(MockCallArgs(
      token: request.tok,
      args: args,
      provider: request.provider,
    ));
    return InvokeResponse(return_1: await _serializeAsync(result));
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    final args = _toDartMap(request.args);

    final result = await _mocks.call(MockCallArgs(
      token: request.tok,
      args: args,
      provider: request.provider,
    ));
    return CallResponse(return_1: await _serializeAsync(result));
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
      RegisterPackageRequest request) async {
    return RegisterPackageResponse(ref: "${request.name}-${request.version}");
  }

  @override
  Future<ReadResourceResponse> readResource(
      Resource resource, ReadResourceRequest request) async {
    final (id, state) = await _mocks.newResource(MockResourceArgs(
      type: request.type,
      name: request.name,
      inputs: _toDartMap(request.properties),
      provider: request.provider,
      id: request.id,
    ));

    final urn = _newUrn(request.parent, request.type, request.name);
    final serializedState = await _serializeToDartMap(state);

    _registeredResources[urn] = {
      "urn": urn,
      if (id != null) "id": id,
      "state": serializedState,
    };

    resources.add(resource);

    return ReadResourceResponse(
      urn: urn,
      properties: _toStruct(serializedState),
    );
  }

  @override
  Future<RegisterResourceResponse> registerResource(
      Resource resource, RegisterResourceRequest request) async {
    resources.add(resource);

    if (request.type == Stack.rootPulumiStackTypeName) {
      return RegisterResourceResponse(
        urn: _newUrn(request.parent, request.type, request.name),
        object: Struct(),
      );
    }

    final (id, state) = await _mocks.newResource(MockResourceArgs(
      type: request.type,
      name: request.name,
      inputs: _toDartMap(request.object),
      provider: request.provider,
      id: request.importId,
    ));

    final urn = _newUrn(request.parent, request.type, request.name);
    final serializedState = await _serializeToDartMap(state);

    _registeredResources[urn] = {
      "urn": urn,
      "id": id ?? request.importId,
      "state": serializedState,
    };

    return RegisterResourceResponse(
      id: id ?? request.importId,
      urn: urn,
      object: _toStruct(serializedState),
    );
  }

  String _newUrn(String? parent, String type, String name) {
    if (parent != null && parent.isNotEmpty) {
      final qualifiedType = parent.split("::")[2];
      final parentType = qualifiedType.split("\$").first;
      type = "$parentType\$$type";
    }
    return "urn:pulumi:${DeploymentImpl.instance.stackName}::${DeploymentImpl.instance.projectName}::$type::$name";
  }

  Map<String, dynamic> _toDartMap(Struct struct) {
    final result = <String, dynamic>{};
    for (final entry in struct.fields.entries) {
      //FIXME we dont have the concept of a deserializer yet
      // final data = Deserializer.deserialize(entry.value);
      // if (data.isKnown && data.value != null) {
      //   result[entry.key] = data.value;
      // }
    }
    return result;
  }

  Future<Map<String, dynamic>> _serializeToDartMap(dynamic o) async {
    if (o is Map<String, dynamic>) {
      return Map.unmodifiable(o);
    }
    // Implement serialization logic here
    throw UnimplementedError(
        "Serialization not implemented for ${o.runtimeType}");
  }

  Future<Struct> _serializeAsync(dynamic o) async {
    final dict = await _serializeToDartMap(o);
    return _toStruct(dict);
  }

  Struct _toStruct(Map<String, dynamic> map) {
    // Implement conversion from Dart Map to Struct
    throw UnimplementedError("Conversion to Struct not implemented");
  }

  @override
  Future<mon.SupportsFeatureResponse> supportsFeature(
      mon.SupportsFeatureRequest request) {
    final hasSupport = request.id != "outputValues";
    return Future.value(mon.SupportsFeatureResponse(hasSupport));
  }

  @override
  Future<Empty> registerResourceOutputs(
      RegisterResourceOutputsRequest request) async {
    final outputs = <String, Output<dynamic>>{};
    for (final entry in request.outputs.fields.entries) {
      //FIXME
      // final data = Deserializer.deserialize(entry.value);
      // outputs[entry.key] = Output.create(data);
    }

    final mockRequest = MockRegisterResourceOutputsRequest(
      urn: request.urn,
      outputs: outputs,
    );

    await _mocks.registerResourceOutputs(mockRequest);
    return Empty();
  }
}
