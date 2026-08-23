// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about amount of some resource in the cluster. For memory, value should be in GB.
class ResourceLimitResponse {
  /// Maximum amount of the resource in the cluster.
  final pulumi.Input<String> maximum;
  /// Minimum amount of the resource in the cluster.
  final pulumi.Input<String> minimum;
  /// Resource name "cpu", "memory" or gpu-specific string.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ResourceLimitResponse].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] Resource name "cpu", "memory" or gpu-specific string.
  const ResourceLimitResponse({
    required this.maximum,
    required this.minimum,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': maximum,
      'minimum': minimum,
      'resourceType': resourceType,
    };
  }

  factory ResourceLimitResponse.fromMap(Map<String, dynamic> map) {
    return ResourceLimitResponse(
      maximum: pulumi.Input.fromValue(map['maximum'] as String),
      minimum: pulumi.Input.fromValue(map['minimum'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
