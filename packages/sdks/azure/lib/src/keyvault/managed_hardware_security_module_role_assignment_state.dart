// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedHardwareSecurityModuleRoleAssignment resources.
class ManagedHardwareSecurityModuleRoleAssignmentState {
  /// The ID of a Managed Hardware Security Module resource. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String>? managedHsmId;
  /// The name in GUID notation which should be used for this Managed Hardware Security Module Role Assignment. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String>? name;
  /// The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String>? principalId;
  /// (Deprecated) The resource id of created assignment resource.
  final pulumi.Input<String>? resourceId;
  /// The resource ID of the role definition to assign. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// Specifies the scope to create the role assignment. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [ManagedHardwareSecurityModuleRoleAssignmentState].
  /// [managedHsmId] The ID of a Managed Hardware Security Module resource. Changing this forces a new Managed Hardware Security Module to be created.
  /// [name] The name in GUID notation which should be used for this Managed Hardware Security Module Role Assignment. Changing this forces a new Managed Hardware Security Module to be created.
  /// [principalId] The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new Managed Hardware Security Module to be created.
  /// [resourceId] (Deprecated) The resource id of created assignment resource.
  /// [roleDefinitionId] The resource ID of the role definition to assign. Changing this forces a new Managed Hardware Security Module to be created.
  /// [scope] Specifies the scope to create the role assignment. Changing this forces a new Managed Hardware Security Module to be created.
  ManagedHardwareSecurityModuleRoleAssignmentState({
    pulumi.Output<String>? managedHsmId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? scope,
  }) :
      managedHsmId = pulumi.Input.asOptionalInput<String>(managedHsmId),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedHsmId': ?managedHsmId,
      'name': ?name,
      'principalId': ?principalId,
      'resourceId': ?resourceId,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory ManagedHardwareSecurityModuleRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleRoleAssignmentState(
      managedHsmId: map['managedHsmId'] == null ? null : pulumi.Output.create<String>(map['managedHsmId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

