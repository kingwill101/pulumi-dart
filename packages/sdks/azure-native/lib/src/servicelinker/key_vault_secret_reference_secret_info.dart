// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret info when type is keyVaultSecretReference. It's for scenario that user provides a secret stored in user's keyvault and source is Azure Kubernetes. The key Vault's resource id is linked to secretStore.keyVaultId.
class KeyVaultSecretReferenceSecretInfo {
  /// Name of the Key Vault secret.
  final pulumi.Input<String>? name;
  /// The secret type.
  /// Expected value is 'keyVaultSecretReference'.
  final pulumi.Input<String> secretType;
  /// Version of the Key Vault secret.
  final pulumi.Input<String>? version;

  /// Creates a new [KeyVaultSecretReferenceSecretInfo].
  /// [name] Name of the Key Vault secret.
  /// [secretType] The secret type.
  /// [version] Version of the Key Vault secret.
  const KeyVaultSecretReferenceSecretInfo({
    this.name,
    required this.secretType,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'secretType': secretType,
      'version': ?version,
    };
  }

  factory KeyVaultSecretReferenceSecretInfo.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretReferenceSecretInfo(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretType: pulumi.Input.fromValue(map['secretType'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
