import 'dart:async';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/settings.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import '../pulumirpc/pulumi/resource.pbgrpc.dart';

class ResourceRegistry {
  static final ResourceRegistry _instance = ResourceRegistry._internal();
  factory ResourceRegistry() => _instance;
  ResourceRegistry._internal();

  final Map<
    String,
    Resource Function(String, Map<String, Input<dynamic>>, ResourceOptions)
  >
  _resourceFactories = {};

  void registerResourceFactory(
    String type,
    Resource Function(String, Map<String, Input<dynamic>>, ResourceOptions)
    factory,
  ) {
    _resourceFactories[type] = factory;
  }

  Future<RegisterResourceResult> registerResourceAsync(
    String type,
    String name,
    Map<String, Input<dynamic>> inputs,
    ResourceOptions options,
  ) async {
    final monitor = Runtime().getMonitor();
    if (monitor == null) {
      throw Exception("Resource monitor is not available");
    }

    final request = RegisterResourceRequest()
      ..type = type
      ..name = name
    // ..object = Struct.fromJavaScript(serializedInputs)
    // Set other fields based on options...
    ;

    try {
      final response = await monitor.registerResource(request);
      final deserializedOutputs = Deserializer.deserialize(
        Value()..structValue = response.object,
      );
      return RegisterResourceResult(
        urn: response.urn,
        id: response.id,
        outputs: deserializedOutputs.value as Map<String, dynamic>,
      );
    } catch (e) {
      // Handle errors, possibly rethrowing or logging
      rethrow;
    }
  }

  Resource constructResource(
    String type,
    String name,
    String urn,
    Map<String, Input<dynamic>> props,
    ResourceOptions options,
  ) {
    final factory = _resourceFactories[type];
    if (factory != null) {
      return factory(name, props, options);
    }
    return DependencyResource(urn);
  }
}

class RegisterResourceResult {
  final String urn;
  final String? id;
  final Map<String, dynamic> outputs;

  RegisterResourceResult({required this.urn, this.id, required this.outputs});
}
