// ignore_for_file: unused_element, unnecessary_cast


/// EncryptionInfo describes the encryption information of a cluster or a backup.
class EncryptionInfoResponseAlloydbV1beta {
  /// Type of encryption.
  final String encryptionType;
  /// Cloud KMS key versions that are being used to protect the database or the backup.
  final List<String> kmsKeyVersions;

  /// Creates a new [EncryptionInfoResponseAlloydbV1beta].
  /// [encryptionType] Type of encryption.
  /// [kmsKeyVersions] Cloud KMS key versions that are being used to protect the database or the backup.
  EncryptionInfoResponseAlloydbV1beta({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKeyVersions': kmsKeyVersions,
    };
  }

  factory EncryptionInfoResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponseAlloydbV1beta(
      encryptionType: map['encryptionType'] as String,
      kmsKeyVersions: (map['kmsKeyVersions'] as List).cast<String>(),
    );
  }
}

