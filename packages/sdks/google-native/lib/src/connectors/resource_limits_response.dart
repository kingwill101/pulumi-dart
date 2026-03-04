// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource limits defined for connection pods of a given connector type.
class ResourceLimitsResponse {
  /// CPU limit.
  final pulumi.Input<String> cpu;

  /// Memory limit.
  final pulumi.Input<String> memory;

  /// Creates a new [ResourceLimitsResponse].
  /// [cpu] CPU limit.
  /// [memory] Memory limit.
  ResourceLimitsResponse({required this.cpu, required this.memory});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cpu': cpu, 'memory': memory};
  }

  factory ResourceLimitsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
