// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the behavior of resources that are no longer managed after the stack is updated or deleted.
class ActionOnUnmanageResponse {
  /// Specifies an action for a newly unmanaged resource management group.
  final pulumi.Input<String>? managementGroups;
  /// Specifies an action for a newly unmanaged resource group.
  final pulumi.Input<String>? resourceGroups;
  /// Specifies an action for a newly unmanaged resource.
  final pulumi.Input<String> resources;

  /// Creates a new [ActionOnUnmanageResponse].
  /// [managementGroups] Specifies an action for a newly unmanaged resource management group.
  /// [resourceGroups] Specifies an action for a newly unmanaged resource group.
  /// [resources] Specifies an action for a newly unmanaged resource.
  const ActionOnUnmanageResponse({
    this.managementGroups,
    this.resourceGroups,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': ?managementGroups,
      'resourceGroups': ?resourceGroups,
      'resources': resources,
    };
  }

  factory ActionOnUnmanageResponse.fromMap(Map<String, dynamic> map) {
    return ActionOnUnmanageResponse(
      managementGroups: (() { final guardedValue = map['managementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: pulumi.Input.fromValue(map['resources'] as String),
    );
  }
}
