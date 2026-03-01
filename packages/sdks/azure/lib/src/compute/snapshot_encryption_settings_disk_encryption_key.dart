// ignore_for_file: unused_element, unnecessary_cast


class SnapshotEncryptionSettingsDiskEncryptionKey {
  /// The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as `id` on the `azure.keyvault.Secret` resource.
  final String secretUrl;
  /// The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  final String sourceVaultId;

  /// Creates a new [SnapshotEncryptionSettingsDiskEncryptionKey].
  /// [secretUrl] The URL to the Key Vault Secret used as the Disk Encryption Key. This can be found as `id` on the `azure.keyvault.Secret` resource.
  /// [sourceVaultId] The ID of the source Key Vault. This can be found as `id` on the `azure.keyvault.KeyVault` resource.
  SnapshotEncryptionSettingsDiskEncryptionKey({
    required this.secretUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory SnapshotEncryptionSettingsDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return SnapshotEncryptionSettingsDiskEncryptionKey(
      secretUrl: map['secretUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

