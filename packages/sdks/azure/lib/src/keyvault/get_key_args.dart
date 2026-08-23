// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_key_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_key_get_key_args_doc}
class GetKeyArgs {
  /// Specifies the ID of the Key Vault instance where the Secret resides, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  ///
  /// &gt; **Note:** The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Key.
  final pulumi.Input<String> name;

  /// Creates a new [GetKeyArgs].
  /// [keyVaultId] Specifies the ID of the Key Vault instance where the Secret resides, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  /// [name] Specifies the name of the Key Vault Key.
  const GetKeyArgs({
    required this.keyVaultId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'name': name,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
