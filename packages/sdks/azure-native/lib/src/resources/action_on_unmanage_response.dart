// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the behavior of resources that are no longer managed after the stack is updated or deleted.
class ActionOnUnmanageResponse {
  /// Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
  final pulumi.Input<String>? managementGroups;
  /// Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
  final pulumi.Input<String>? resourceGroups;
  /// Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
  final pulumi.Input<String> resources;
  /// Some resources do not support deletion.  This flag will denote how the stack should handle those resources.
  final pulumi.Input<String>? resourcesWithoutDeleteSupport;

  /// Creates a new [ActionOnUnmanageResponse].
  /// [managementGroups] Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
  /// [resourceGroups] Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
  /// [resources] Specifies an action for a newly unmanaged resource. Delete will attempt to delete the resource from Azure. Detach will leave the resource in it's current state.
  /// [resourcesWithoutDeleteSupport] Some resources do not support deletion.  This flag will denote how the stack should handle those resources.
  ActionOnUnmanageResponse({
    this.managementGroups,
    this.resourceGroups,
    required this.resources,
    this.resourcesWithoutDeleteSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': ?managementGroups,
      'resourceGroups': ?resourceGroups,
      'resources': resources,
      'resourcesWithoutDeleteSupport': ?resourcesWithoutDeleteSupport,
    };
  }

  factory ActionOnUnmanageResponse.fromMap(Map<String, dynamic> map) {
    return ActionOnUnmanageResponse(
      managementGroups: map['managementGroups'] == null ? null : (map['managementGroups'] as String).input(),
      resourceGroups: map['resourceGroups'] == null ? null : (map['resourceGroups'] as String).input(),
      resources: (map['resources'] as String).input(),
      resourcesWithoutDeleteSupport: map['resourcesWithoutDeleteSupport'] == null ? null : (map['resourcesWithoutDeleteSupport'] as String).input(),
    );
  }
}

