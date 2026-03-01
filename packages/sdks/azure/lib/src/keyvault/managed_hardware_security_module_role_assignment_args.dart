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
    required pulumi.Output<String> managedHsmId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> principalId,
    required pulumi.Output<String> roleDefinitionId,
    required pulumi.Output<String> scope,
  }) :
      managedHsmId = pulumi.Input.asInput<String>(managedHsmId),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asInput<String>(principalId),
      roleDefinitionId = pulumi.Input.asInput<String>(roleDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

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
      managedHsmId: pulumi.Output.create<String>(map['managedHsmId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      roleDefinitionId: pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

