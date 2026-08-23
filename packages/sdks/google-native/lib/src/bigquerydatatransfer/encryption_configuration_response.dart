// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the encryption configuration for a transfer.
class EncryptionConfigurationResponse {
  /// The name of the KMS key used for encrypting BigQuery data.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [EncryptionConfigurationResponse].
  /// [kmsKeyName] The name of the KMS key used for encrypting BigQuery data.
  const EncryptionConfigurationResponse({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory EncryptionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigurationResponse(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
