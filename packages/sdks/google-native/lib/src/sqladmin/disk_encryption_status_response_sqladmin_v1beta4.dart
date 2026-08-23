// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption status for an instance.
class DiskEncryptionStatusResponseSqladminV1beta4 {
  /// This is always `sql#diskEncryptionStatus`.
  final pulumi.Input<String> kind;
  /// KMS key version used to encrypt the Cloud SQL instance resource
  final pulumi.Input<String> kmsKeyVersionName;

  /// Creates a new [DiskEncryptionStatusResponseSqladminV1beta4].
  /// [kind] This is always `sql#diskEncryptionStatus`.
  /// [kmsKeyVersionName] KMS key version used to encrypt the Cloud SQL instance resource
  const DiskEncryptionStatusResponseSqladminV1beta4({
    required this.kind,
    required this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'kmsKeyVersionName': kmsKeyVersionName,
    };
  }

  factory DiskEncryptionStatusResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionStatusResponseSqladminV1beta4(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kmsKeyVersionName: pulumi.Input.fromValue(map['kmsKeyVersionName'] as String),
    );
  }
}
