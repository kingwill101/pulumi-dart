// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information about amount of some resource in the cluster. For memory, value should be in GB.
class ResourceLimitContainerV1beta1 {
  /// Maximum amount of the resource in the cluster.
  final pulumi.Input<String>? maximum;
  /// Minimum amount of the resource in the cluster.
  final pulumi.Input<String>? minimum;
  /// Resource name "cpu", "memory" or gpu-specific string.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ResourceLimitContainerV1beta1].
  /// [maximum] Maximum amount of the resource in the cluster.
  /// [minimum] Minimum amount of the resource in the cluster.
  /// [resourceType] Resource name "cpu", "memory" or gpu-specific string.
  ResourceLimitContainerV1beta1({
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

  factory ResourceLimitContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ResourceLimitContainerV1beta1(
      maximum: map['maximum'] == null ? null : (map['maximum']! as String).input(),
      minimum: map['minimum'] == null ? null : (map['minimum']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
    );
  }
}

