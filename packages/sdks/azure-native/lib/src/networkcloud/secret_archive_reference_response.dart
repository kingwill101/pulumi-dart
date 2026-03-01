// ignore_for_file: unused_element, unnecessary_cast


class SecretArchiveReferenceResponse {
  /// The resource ID of the key vault containing the secret.
  final String keyVaultId;
  /// The name of the secret in the key vault.
  final String secretName;
  /// The version of the secret in the key vault.
  final String secretVersion;

  /// Creates a new [SecretArchiveReferenceResponse].
  /// [keyVaultId] The resource ID of the key vault containing the secret.
  /// [secretName] The name of the secret in the key vault.
  /// [secretVersion] The version of the secret in the key vault.
  SecretArchiveReferenceResponse({
    required this.keyVaultId,
    required this.secretName,
    required this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': keyVaultId,
      'secretName': secretName,
      'secretVersion': secretVersion,
    };
  }

  factory SecretArchiveReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SecretArchiveReferenceResponse(
      keyVaultId: map['keyVaultId'] as String,
      secretName: map['secretName'] as String,
      secretVersion: map['secretVersion'] as String,
    );
  }
}

