// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about amount of some resource in the cluster. For memory, value should be in GB.
class ResourceLimit {
  /// Maximum amount of the resource in the cluster.
  final pulumi.Input<String>? maximum;
  /// Minimum amount of the resource in the cluster.
  final pulumi.Input<String>? minimum;
  /// Resource name "cpu", "memory" or gpu-specific string.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ResourceLimit].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] Resource name "cpu", "memory" or gpu-specific string.
  const ResourceLimit({
    this.maximum,
    this.minimum,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximum': ?maximum,
      'minimum': ?minimum,
      'resourceType': ?resourceType,
    };
  }

  factory ResourceLimit.fromMap(Map<String, dynamic> map) {
    return ResourceLimit(
      maximum: (() { final guardedValue = map['maximum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimum: (() { final guardedValue = map['minimum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
