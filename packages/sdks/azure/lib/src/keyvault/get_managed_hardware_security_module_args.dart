// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_managed_hardware_security_module_get_managed_hardware_security_module_args_doc}
/// Arguments for getManagedHardwareSecurityModule.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_managed_hardware_security_module_get_managed_hardware_security_module_args_doc}
class GetManagedHardwareSecurityModuleArgs {
  /// The name of the Key Vault Managed Hardware Security Module.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Key Vault Managed Hardware Security Module exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedHardwareSecurityModuleArgs].
  /// [name] The name of the Key Vault Managed Hardware Security Module.
  /// [resourceGroupName] The name of the Resource Group in which the Key Vault Managed Hardware Security Module exists.
  GetManagedHardwareSecurityModuleArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedHardwareSecurityModuleArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

