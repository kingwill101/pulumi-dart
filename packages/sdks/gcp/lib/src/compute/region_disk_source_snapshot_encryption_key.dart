// ignore_for_file: unused_element, unnecessary_cast


class RegionDiskSourceSnapshotEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final String? kmsKeyName;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final String? rawKey;
  /// (Output)
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final String? sha256;

  /// Creates a new [RegionDiskSourceSnapshotEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [sha256] (Output)
  RegionDiskSourceSnapshotEncryptionKey({
    this.kmsKeyName,
    this.rawKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'rawKey': ?rawKey,
      'sha256': ?sha256,
    };
  }

  factory RegionDiskSourceSnapshotEncryptionKey.fromMap(Map<String, dynamic> map) {
    return RegionDiskSourceSnapshotEncryptionKey(
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}

