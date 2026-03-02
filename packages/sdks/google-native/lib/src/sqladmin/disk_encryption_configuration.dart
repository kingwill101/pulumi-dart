// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption configuration for an instance.
class DiskEncryptionConfiguration {
  /// This is always `sql#diskEncryptionConfiguration`.
  final pulumi.Input<String>? kind;
  /// Resource name of KMS key for disk encryption
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [DiskEncryptionConfiguration].
  /// [kind] This is always `sql#diskEncryptionConfiguration`.
  /// [kmsKeyName] Resource name of KMS key for disk encryption
  DiskEncryptionConfiguration({
    this.kind,
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory DiskEncryptionConfiguration.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionConfiguration(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
    );
  }
}

