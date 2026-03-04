// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the cluster.
class EncryptionConfigResponse {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final pulumi.Input<String> gcePdKmsKeyName;

  /// Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [EncryptionConfigResponse].
  /// [gcePdKmsKeyName] Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  /// [kmsKey] Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  EncryptionConfigResponse({
    required this.gcePdKmsKeyName,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePdKmsKeyName': gcePdKmsKeyName,
      'kmsKey': kmsKey,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      gcePdKmsKeyName: pulumi.Input.fromValue(map['gcePdKmsKeyName'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}
