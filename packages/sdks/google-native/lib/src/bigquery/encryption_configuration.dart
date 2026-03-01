// ignore_for_file: unused_element, unnecessary_cast


class EncryptionConfiguration {
  /// Optional. Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.
  final String? kmsKeyName;

  /// Creates a new [EncryptionConfiguration].
  /// [kmsKeyName] Optional. Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table. The BigQuery Service Account associated with your project requires access to this encryption key.
  EncryptionConfiguration({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory EncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return EncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}

