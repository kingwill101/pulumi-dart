// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fleet is the fleet configuration for the cluster.
class FleetContainerV1beta1 {
  /// The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  final pulumi.Input<String>? project;

  /// Creates a new [FleetContainerV1beta1].
  /// [project] The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  const FleetContainerV1beta1({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory FleetContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FleetContainerV1beta1(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

