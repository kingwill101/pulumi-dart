// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_role_definition_permission.dart';

/// {@template pulumi_keyvault_managed_hardware_security_module_role_definition_managed_hardware_security_module_role_definition_args_doc}
/// The set of arguments for ManagedHardwareSecurityModuleRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_keyvault_managed_hardware_security_module_role_definition_managed_hardware_security_module_role_definition_args_doc}
class ManagedHardwareSecurityModuleRoleDefinitionArgs {
  /// Specifies a text description about this Key Vault Managed Hardware Security Module Role Definition.
  final pulumi.Input<String>? description;
  /// The ID of the Key Vault Managed Hardware Security Module. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  final pulumi.Input<String> managedHsmId;
  /// The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  final pulumi.Input<String>? name;
  /// One or more `permission` blocks as defined below.
  final pulumi.Input<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>>? permissions;
  /// Specify a display name for this Key Vault Managed Hardware Security Module Role Definition.
  final pulumi.Input<String>? roleName;

  /// Creates a new [ManagedHardwareSecurityModuleRoleDefinitionArgs].
  /// [description] Specifies a text description about this Key Vault Managed Hardware Security Module Role Definition.
  /// [managedHsmId] The ID of the Key Vault Managed Hardware Security Module. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  /// [name] The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  /// [permissions] One or more `permission` blocks as defined below.
  /// [roleName] Specify a display name for this Key Vault Managed Hardware Security Module Role Definition.
  ManagedHardwareSecurityModuleRoleDefinitionArgs({
    this.description,
    required this.managedHsmId,
    this.name,
    this.permissions,
    this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managedHsmId': managedHsmId,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<ManagedHardwareSecurityModuleRoleDefinitionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleName': ?roleName,
    };
  }

  factory ManagedHardwareSecurityModuleRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleRoleDefinitionArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      managedHsmId: (map['managedHsmId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      permissions: map['permissions'] == null ? null : (pulumi.Input.decodeList<ManagedHardwareSecurityModuleRoleDefinitionPermission>(map['permissions'], (value) => ManagedHardwareSecurityModuleRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
    );
  }
}

