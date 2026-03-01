// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationStoreEncryption {
  final String identityClientId;
  final String keyVaultKeyIdentifier;

  /// Creates a new [GetConfigurationStoreEncryption].
  /// [identityClientId] Required.
  /// [keyVaultKeyIdentifier] Required.
  GetConfigurationStoreEncryption({
    required this.identityClientId,
    required this.keyVaultKeyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': identityClientId,
      'keyVaultKeyIdentifier': keyVaultKeyIdentifier,
    };
  }

  factory GetConfigurationStoreEncryption.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreEncryption(
      identityClientId: map['identityClientId'] as String,
      keyVaultKeyIdentifier: map['keyVaultKeyIdentifier'] as String,
    );
  }
}

