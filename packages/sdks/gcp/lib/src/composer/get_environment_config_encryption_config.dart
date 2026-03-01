// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentConfigEncryptionConfig {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  final String kmsKeyName;

  /// Creates a new [GetEnvironmentConfigEncryptionConfig].
  /// [kmsKeyName] Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  GetEnvironmentConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory GetEnvironmentConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

