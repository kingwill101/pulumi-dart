// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceFieldSelector represents container resources (cpu, memory) and their output format
class ResourceFieldSelector {
  /// Container name: required for volumes, optional for env vars
  final pulumi.Input<String?>? containerName;
  /// Specifies the output format of the exposed resources, defaults to "1"
  final pulumi.Input<String?>? divisor;
  /// Required: resource to select
  final pulumi.Input<String> resource;

  /// Creates a new [ResourceFieldSelector].
  /// [containerName] Container name: required for volumes, optional for env vars
  /// [divisor] Specifies the output format of the exposed resources, defaults to "1"
  /// [resource] Required: resource to select
  const ResourceFieldSelector({
    this.containerName,
    this.divisor,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'divisor': ?divisor,
      'resource': resource,
    };
  }

  factory ResourceFieldSelector.fromMap(Map<String, dynamic> map) {
    return ResourceFieldSelector(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      divisor: (() { final guardedValue = map['divisor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
