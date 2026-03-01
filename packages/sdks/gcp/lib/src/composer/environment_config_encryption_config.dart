// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentConfigEncryptionConfig {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  final String kmsKeyName;

  /// Creates a new [EnvironmentConfigEncryptionConfig].
  /// [kmsKeyName] Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  EnvironmentConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory EnvironmentConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigEncryptionConfig(
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}

