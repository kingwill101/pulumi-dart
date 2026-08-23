// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetDefaultEncryptionConfiguration {
  /// Describes the Cloud KMS encryption key that will be used to protect destination
  /// BigQuery table. The BigQuery Service Account associated with your project requires
  /// access to this encryption key.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [DatasetDefaultEncryptionConfiguration].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination
  const DatasetDefaultEncryptionConfiguration({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory DatasetDefaultEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DatasetDefaultEncryptionConfiguration(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
