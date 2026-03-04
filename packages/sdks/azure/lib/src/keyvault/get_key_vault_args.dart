// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_key_vault_get_key_vault_args_doc}
/// Arguments for getKeyVault.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_key_vault_get_key_vault_args_doc}
class GetKeyVaultArgs {
  /// Specifies the name of the Key Vault.
  final pulumi.Input<String> name;

  /// The name of the Resource Group in which the Key Vault exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetKeyVaultArgs].
  /// [name] Specifies the name of the Key Vault.
  /// [resourceGroupName] The name of the Resource Group in which the Key Vault exists.
  GetKeyVaultArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetKeyVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyVaultArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
