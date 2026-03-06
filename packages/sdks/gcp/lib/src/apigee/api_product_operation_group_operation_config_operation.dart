// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProductOperationGroupOperationConfigOperation {
  /// Methods refers to the REST verbs, when none specified, all verb types are allowed.
  final pulumi.Input<List<String>>? methods;
  /// Required. REST resource path associated with the API proxy or remote service.
  final pulumi.Input<String>? resource;

  /// Creates a new [ApiProductOperationGroupOperationConfigOperation].
  /// [methods] Methods refers to the REST verbs, when none specified, all verb types are allowed.
  /// [resource] Required. REST resource path associated with the API proxy or remote service.
  const ApiProductOperationGroupOperationConfigOperation({
    this.methods,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?methods,
      'resource': ?resource,
    };
  }

  factory ApiProductOperationGroupOperationConfigOperation.fromMap(Map<String, dynamic> map) {
    return ApiProductOperationGroupOperationConfigOperation(
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

