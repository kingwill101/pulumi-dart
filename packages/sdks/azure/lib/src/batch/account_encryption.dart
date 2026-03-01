// ignore_for_file: unused_element, unnecessary_cast


class AccountEncryption {
  /// The full URL path to the Azure key vault key id that should be used to encrypt data, as documented [here](https://docs.microsoft.com/azure/batch/batch-customer-managed-key). Both versioned and versionless keys are supported.
  final String keyVaultKeyId;

  /// Creates a new [AccountEncryption].
  /// [keyVaultKeyId] The full URL path to the Azure key vault key id that should be used to encrypt data, as documented [here](https://docs.microsoft.com/azure/batch/batch-customer-managed-key). Both versioned and versionless keys are supported.
  AccountEncryption({
    required this.keyVaultKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
    };
  }

  factory AccountEncryption.fromMap(Map<String, dynamic> map) {
    return AccountEncryption(
      keyVaultKeyId: map['keyVaultKeyId'] as String,
    );
  }
}

