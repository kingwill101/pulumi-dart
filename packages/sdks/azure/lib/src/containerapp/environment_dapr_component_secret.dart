// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentDaprComponentSecret {
  /// The identity to use for accessing key vault reference. Possible values are the Resource ID of a User Assigned Managed Identity, or `System` to use the System Assigned Managed Identity.
  final String? identity;
  /// The Key Vault Secret ID.
  final String? keyVaultSecretId;
  /// The Secret name.
  final String name;
  /// The value for this secret.
  final String? value;

  /// Creates a new [EnvironmentDaprComponentSecret].
  /// [identity] The identity to use for accessing key vault reference. Possible values are the Resource ID of a User Assigned Managed Identity, or `System` to use the System Assigned Managed Identity.
  /// [keyVaultSecretId] The Key Vault Secret ID.
  /// [name] The Secret name.
  /// [value] The value for this secret.
  EnvironmentDaprComponentSecret({
    this.identity,
    this.keyVaultSecretId,
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': name,
      'value': ?value,
    };
  }

  factory EnvironmentDaprComponentSecret.fromMap(Map<String, dynamic> map) {
    return EnvironmentDaprComponentSecret(
      identity: map['identity'] == null ? null : map['identity'] as String,
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : map['keyVaultSecretId'] as String,
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

