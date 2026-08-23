// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the cluster.
class EncryptionConfigResponseDataprocV1beta2 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final pulumi.Input<String> gcePdKmsKeyName;

  /// Creates a new [EncryptionConfigResponseDataprocV1beta2].
  /// [gcePdKmsKeyName] Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  const EncryptionConfigResponseDataprocV1beta2({
    required this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePdKmsKeyName': gcePdKmsKeyName,
    };
  }

  factory EncryptionConfigResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponseDataprocV1beta2(
      gcePdKmsKeyName: pulumi.Input.fromValue(map['gcePdKmsKeyName'] as String),
    );
  }
}
