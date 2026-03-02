// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceFieldSelector represents container resources (cpu, memory) and their output format
class ResourceFieldSelectorPatch {
  /// Container name: required for volumes, optional for env vars
  final pulumi.Input<String>? containerName;
  /// Specifies the output format of the exposed resources, defaults to "1"
  final pulumi.Input<String>? divisor;
  /// Required: resource to select
  final pulumi.Input<String>? resource;

  /// Creates a new [ResourceFieldSelectorPatch].
  /// [containerName] Container name: required for volumes, optional for env vars
  /// [divisor] Specifies the output format of the exposed resources, defaults to "1"
  /// [resource] Required: resource to select
  ResourceFieldSelectorPatch({
    this.containerName,
    this.divisor,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'divisor': ?divisor,
      'resource': ?resource,
    };
  }

  factory ResourceFieldSelectorPatch.fromMap(Map<String, dynamic> map) {
    return ResourceFieldSelectorPatch(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      divisor: map['divisor'] == null ? null : (map['divisor'] as String).input(),
      resource: map['resource'] == null ? null : (map['resource'] as String).input(),
    );
  }
}

