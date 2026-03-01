// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey {
  /// (Optional)
  final String? kmsKeyName;
  /// (Optional)
  final String? kmsKeyServiceAccount;
  /// (Optional)
  final String? rawKey;
  /// (Optional)
  final String? rsaEncryptedKey;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey].
  /// [kmsKeyName] (Optional)
  /// [kmsKeyServiceAccount] (Optional)
  /// [rawKey] (Optional)
  /// [rsaEncryptedKey] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey(
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] == null ? null : map['rsaEncryptedKey'] as String,
    );
  }
}

