// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_managed_hardware_security_module_role_assignment_managed_hardware_security_module_role_assignment_args_doc}
/// The set of arguments for ManagedHardwareSecurityModuleRoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_keyvault_managed_hardware_security_module_role_assignment_managed_hardware_security_module_role_assignment_args_doc}
class ManagedHardwareSecurityModuleRoleAssignmentArgs {
  /// The ID of a Managed Hardware Security Module resource. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String> managedHsmId;
  /// The name in GUID notation which should be used for this Managed Hardware Security Module Role Assignment. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String>? name;
  /// The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String> principalId;
  /// The resource ID of the role definition to assign. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String> roleDefinitionId;
  /// Specifies the scope to create the role assignment. Changing this forces a new Managed Hardware Security Module to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [ManagedHardwareSecurityModuleRoleAssignmentArgs].
  /// [managedHsmId] The ID of a Managed Hardware Security Module resource. Changing this forces a new Managed Hardware Security Module to be created.
  /// [name] The name in GUID notation which should be used for this Managed Hardware Security Module Role Assignment. Changing this forces a new Managed Hardware Security Module to be created.
  /// [principalId] The principal ID to be assigned to this role. It can point to a user, service principal, or security group. Changing this forces a new Managed Hardware Security Module to be created.
  /// [roleDefinitionId] The resource ID of the role definition to assign. Changing this forces a new Managed Hardware Security Module to be created.
  /// [scope] Specifies the scope to create the role assignment. Changing this forces a new Managed Hardware Security Module to be created.
  ManagedHardwareSecurityModuleRoleAssignmentArgs({
    required this.managedHsmId,
    this.name,
    required this.principalId,
    required this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedHsmId': managedHsmId,
      'name': ?name,
      'principalId': principalId,
      'roleDefinitionId': roleDefinitionId,
      'scope': scope,
    };
  }

  factory ManagedHardwareSecurityModuleRoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleRoleAssignmentArgs(
      managedHsmId: pulumi.Input.fromValue(map['managedHsmId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

