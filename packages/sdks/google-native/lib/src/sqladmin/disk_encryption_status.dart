// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption status for an instance.
class DiskEncryptionStatus {
  /// This is always `sql#diskEncryptionStatus`.
  final pulumi.Input<String>? kind;
  /// KMS key version used to encrypt the Cloud SQL instance resource
  final pulumi.Input<String>? kmsKeyVersionName;

  /// Creates a new [DiskEncryptionStatus].
  /// [kind] This is always `sql#diskEncryptionStatus`.
  /// [kmsKeyVersionName] KMS key version used to encrypt the Cloud SQL instance resource
  DiskEncryptionStatus({
    this.kind,
    this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'kmsKeyVersionName': ?kmsKeyVersionName,
    };
  }

  factory DiskEncryptionStatus.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionStatus(
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      kmsKeyVersionName: map['kmsKeyVersionName'] == null ? null : (map['kmsKeyVersionName'] as String).input(),
    );
  }
}

