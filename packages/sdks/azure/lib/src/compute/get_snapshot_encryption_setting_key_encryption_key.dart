// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotEncryptionSettingKeyEncryptionKey {
  final String keyUrl;
  final String sourceVaultId;

  /// Creates a new [GetSnapshotEncryptionSettingKeyEncryptionKey].
  /// [keyUrl] Required.
  /// [sourceVaultId] Required.
  GetSnapshotEncryptionSettingKeyEncryptionKey({
    required this.keyUrl,
    required this.sourceVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVaultId': sourceVaultId,
    };
  }

  factory GetSnapshotEncryptionSettingKeyEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetSnapshotEncryptionSettingKeyEncryptionKey(
      keyUrl: map['keyUrl'] as String,
      sourceVaultId: map['sourceVaultId'] as String,
    );
  }
}

