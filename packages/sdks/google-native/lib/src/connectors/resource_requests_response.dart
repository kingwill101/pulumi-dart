// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource requests defined for connection pods of a given connector type.
class ResourceRequestsResponse {
  /// CPU request.
  final pulumi.Input<String> cpu;
  /// Memory request.
  final pulumi.Input<String> memory;

  /// Creates a new [ResourceRequestsResponse].
  /// [cpu] CPU request.
  /// [memory] Memory request.
  const ResourceRequestsResponse({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memory': memory,
    };
  }

  factory ResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}

