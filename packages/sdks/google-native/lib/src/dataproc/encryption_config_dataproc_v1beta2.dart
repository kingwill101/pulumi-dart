// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the cluster.
class EncryptionConfigDataprocV1beta2 {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final pulumi.Input<String>? gcePdKmsKeyName;

  /// Creates a new [EncryptionConfigDataprocV1beta2].
  /// [gcePdKmsKeyName] Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  EncryptionConfigDataprocV1beta2({
    this.gcePdKmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePdKmsKeyName': ?gcePdKmsKeyName,
    };
  }

  factory EncryptionConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigDataprocV1beta2(
      gcePdKmsKeyName: (() { final guardedValue = map['gcePdKmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

