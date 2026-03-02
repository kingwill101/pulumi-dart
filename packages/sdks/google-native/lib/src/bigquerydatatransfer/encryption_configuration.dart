// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the encryption configuration for a transfer.
class EncryptionConfiguration {
  /// The name of the KMS key used for encrypting BigQuery data.
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [EncryptionConfiguration].
  /// [kmsKeyName] The name of the KMS key used for encrypting BigQuery data.
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
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
    );
  }
}

