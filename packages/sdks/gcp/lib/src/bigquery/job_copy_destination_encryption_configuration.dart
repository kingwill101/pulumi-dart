// ignore_for_file: unused_element, unnecessary_cast


class JobCopyDestinationEncryptionConfiguration {
  /// Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
  /// The BigQuery Service Account associated with your project requires access to this encryption key.
  final String kmsKeyName;
  /// (Output)
  /// Describes the Cloud KMS encryption key version used to protect destination BigQuery table.
  final String? kmsKeyVersion;

  /// Creates a new [JobCopyDestinationEncryptionConfiguration].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
  /// [kmsKeyVersion] (Output)
  JobCopyDestinationEncryptionConfiguration({
    required this.kmsKeyName,
    this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyVersion': ?kmsKeyVersion,
    };
  }

  factory JobCopyDestinationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return JobCopyDestinationEncryptionConfiguration(
      kmsKeyName: map['kmsKeyName'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] == null ? null : map['kmsKeyVersion'] as String,
    );
  }
}

