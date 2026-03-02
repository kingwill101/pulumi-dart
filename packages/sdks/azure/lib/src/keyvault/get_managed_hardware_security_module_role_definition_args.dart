// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_managed_hardware_security_module_role_definition_get_managed_hardware_security_module_role_definition_args_doc}
/// Arguments for getManagedHardwareSecurityModuleRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_managed_hardware_security_module_role_definition_get_managed_hardware_security_module_role_definition_args_doc}
class GetManagedHardwareSecurityModuleRoleDefinitionArgs {
  /// The ID of the Key Vault Managed Hardware Security Module.
  final pulumi.Input<String> managedHsmId;
  /// The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedHardwareSecurityModuleRoleDefinitionArgs].
  /// [managedHsmId] The ID of the Key Vault Managed Hardware Security Module.
  /// [name] The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition.
  GetManagedHardwareSecurityModuleRoleDefinitionArgs({
    required this.managedHsmId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedHsmId': managedHsmId,
      'name': name,
    };
  }

  factory GetManagedHardwareSecurityModuleRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleRoleDefinitionArgs(
      managedHsmId: (map['managedHsmId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

