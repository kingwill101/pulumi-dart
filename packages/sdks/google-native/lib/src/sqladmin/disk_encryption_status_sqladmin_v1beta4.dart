// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption status for an instance.
class DiskEncryptionStatusSqladminV1beta4 {
  /// This is always `sql#diskEncryptionStatus`.
  final pulumi.Input<String>? kind;
  /// KMS key version used to encrypt the Cloud SQL instance resource
  final pulumi.Input<String>? kmsKeyVersionName;

  /// Creates a new [DiskEncryptionStatusSqladminV1beta4].
  /// [kind] This is always `sql#diskEncryptionStatus`.
  /// [kmsKeyVersionName] KMS key version used to encrypt the Cloud SQL instance resource
  const DiskEncryptionStatusSqladminV1beta4({
    this.kind,
    this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'kmsKeyVersionName': ?kmsKeyVersionName,
    };
  }

  factory DiskEncryptionStatusSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionStatusSqladminV1beta4(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyVersionName: (() { final guardedValue = map['kmsKeyVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
