// ignore_for_file: unused_element, unnecessary_cast


class IntegrationAccountCertificateKeyVaultKey {
  /// The name of Key Vault Key.
  final String keyName;
  /// The ID of the Key Vault.
  final String keyVaultId;
  /// The version of Key Vault Key.
  final String? keyVersion;

  /// Creates a new [IntegrationAccountCertificateKeyVaultKey].
  /// [keyName] The name of Key Vault Key.
  /// [keyVaultId] The ID of the Key Vault.
  /// [keyVersion] The version of Key Vault Key.
  IntegrationAccountCertificateKeyVaultKey({
    required this.keyName,
    required this.keyVaultId,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultId': keyVaultId,
      'keyVersion': ?keyVersion,
    };
  }

  factory IntegrationAccountCertificateKeyVaultKey.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountCertificateKeyVaultKey(
      keyName: map['keyName'] as String,
      keyVaultId: map['keyVaultId'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

