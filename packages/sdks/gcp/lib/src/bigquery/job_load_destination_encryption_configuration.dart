// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobLoadDestinationEncryptionConfiguration {
  /// Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
  /// The BigQuery Service Account associated with your project requires access to this encryption key.
  final pulumi.Input<String> kmsKeyName;
  /// (Output)
  /// Describes the Cloud KMS encryption key version used to protect destination BigQuery table.
  final pulumi.Input<String>? kmsKeyVersion;

  /// Creates a new [JobLoadDestinationEncryptionConfiguration].
  /// [kmsKeyName] Describes the Cloud KMS encryption key that will be used to protect destination BigQuery table.
  /// [kmsKeyVersion] (Output)
  const JobLoadDestinationEncryptionConfiguration({
    required this.kmsKeyName,
    this.kmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyVersion': ?kmsKeyVersion,
    };
  }

  factory JobLoadDestinationEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return JobLoadDestinationEncryptionConfiguration(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      kmsKeyVersion: (() { final guardedValue = map['kmsKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
