// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_managed_hardware_security_module_key_get_managed_hardware_security_module_key_args_doc}
/// Arguments for getManagedHardwareSecurityModuleKey.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_managed_hardware_security_module_key_get_managed_hardware_security_module_key_args_doc}
class GetManagedHardwareSecurityModuleKeyArgs {
  /// Specifies the ID of the Managed Hardware Security Module instance where the Secret resides, available on the `azure.keyvault.ManagedHardwareSecurityModuleKey` Data Source / Resource.
  ///
  /// > **Note:** The Managed Hardware Security Module must be in the same subscription as the provider. If the Managed Hardware Security Module is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String> managedHsmId;
  /// Specifies the name of the Managed Hardware Security Module Key.
  final pulumi.Input<String> name;

  /// Creates a new [GetManagedHardwareSecurityModuleKeyArgs].
  /// [managedHsmId] Specifies the ID of the Managed Hardware Security Module instance where the Secret resides, available on the `azure.keyvault.ManagedHardwareSecurityModuleKey` Data Source / Resource.
  /// [name] Specifies the name of the Managed Hardware Security Module Key.
  GetManagedHardwareSecurityModuleKeyArgs({
    required pulumi.Output<String> managedHsmId,
    required pulumi.Output<String> name,
  }) :
      managedHsmId = pulumi.Input.asInput<String>(managedHsmId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedHsmId': managedHsmId,
      'name': name,
    };
  }

  factory GetManagedHardwareSecurityModuleKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleKeyArgs(
      managedHsmId: pulumi.Output.create<String>(map['managedHsmId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

