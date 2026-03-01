// ignore_for_file: unused_element, unnecessary_cast


class GetManagedDisksDiskEncryptionSettingKeyEncryptionKey {
  /// The URL to the Key Vault Key used as the Key Encryption Key.
  final String keyUrl;
  /// The ID of the source Key Vault.
  final String sourceVaultId;

  /// Creates a new [GetManagedDisksDiskEncryptionSettingKeyEncryptionKey].
  /// [keyUrl] The URL to the Key Vault Key used as the Key Encryption Key.
  /// [sourceVaultId] The ID of the source Key Vault.
  GetManagedDisksDiskEncryptionSettingKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetManagedDisksDiskEncryptionSettingKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetManagedDisksDiskEncryptionSettingKeyEncryptionKey(
      keyUrl: map['keyUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

