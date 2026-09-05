// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_get_secret_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_keyvault_get_secret_get_secret_args_doc}
class GetSecretArgs {
  /// Specifies the ID of the Key Vault instance to fetch secret names from, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  final pulumi.Input<String> keyVaultId;
  /// Specifies the name of the Key Vault Secret.
  final pulumi.Input<String> name;
  /// Specifies the version of the Key Vault Secret. Defaults to the current version of the Key Vault Secret.
  ///
  /// &gt; **Note:** The vault must be in the same subscription as the provider. If the vault is in another subscription, you must create an aliased provider for that subscription.
  final pulumi.Input<String?>? version;

  /// Creates a new [GetSecretArgs].
  /// [keyVaultId] Specifies the ID of the Key Vault instance to fetch secret names from, available on the `azure.keyvault.KeyVault` Data Source / Resource.
  /// [name] Specifies the name of the Key Vault Secret.
  /// [version] Specifies the version of the Key Vault Secret. Defaults to the current version of the Key Vault Secret.
  const GetSecretArgs({
    required this.keyVaultId,
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'name': name,
      'version': ?version,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
