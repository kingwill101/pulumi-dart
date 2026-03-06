// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption settings for the cluster.
class EncryptionConfig {
  /// Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  final pulumi.Input<String>? gcePdKmsKeyName;
  /// Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [EncryptionConfig].
  /// [gcePdKmsKeyName] Optional. The Cloud KMS key name to use for PD disk encryption for all instances in the cluster.
  /// [kmsKey] Optional. The Cloud KMS key name to use for encrypting customer core content in spanner and cluster PD disk for all instances in the cluster.
  const EncryptionConfig({
    this.gcePdKmsKeyName,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcePdKmsKeyName': ?gcePdKmsKeyName,
      'kmsKey': ?kmsKey,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      gcePdKmsKeyName: (() { final guardedValue = map['gcePdKmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

