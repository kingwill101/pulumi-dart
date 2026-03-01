// ignore_for_file: unused_element, unnecessary_cast


/// The secret info when type is keyVaultSecretReference. It's for scenario that user provides a secret stored in user's keyvault and source is Azure Kubernetes. The key Vault's resource id is linked to secretStore.keyVaultId.
class KeyVaultSecretReferenceSecretInfo {
  /// Name of the Key Vault secret.
  final String? name;
  /// The secret type.
  /// Expected value is 'keyVaultSecretReference'.
  final String secretType;
  /// Version of the Key Vault secret.
  final String? version;

  /// Creates a new [KeyVaultSecretReferenceSecretInfo].
  /// [name] Name of the Key Vault secret.
  /// [secretType] The secret type.
  /// [version] Version of the Key Vault secret.
  KeyVaultSecretReferenceSecretInfo({
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
      name: map['name'] == null ? null : map['name'] as String,
      secretType: map['secretType'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

