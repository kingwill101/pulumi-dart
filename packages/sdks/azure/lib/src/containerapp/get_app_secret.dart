// ignore_for_file: unused_element, unnecessary_cast


class GetAppSecret {
  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  final String identity;
  /// The ID of a Key Vault secret.
  final String keyVaultSecretId;
  /// The name of the Container App.
  final String name;
  /// The HTTP Header value.
  final String value;

  /// Creates a new [GetAppSecret].
  /// [identity] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [keyVaultSecretId] The ID of a Key Vault secret.
  /// [name] The name of the Container App.
  /// [value] The HTTP Header value.
  GetAppSecret({
    required this.identity,
    required this.keyVaultSecretId,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'keyVaultSecretId': keyVaultSecretId,
      'name': name,
      'value': value,
    };
  }

  factory GetAppSecret.fromMap(Map<String, dynamic> map) {
    return GetAppSecret(
      identity: map['identity'] as String,
      keyVaultSecretId: map['keyVaultSecretId'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

