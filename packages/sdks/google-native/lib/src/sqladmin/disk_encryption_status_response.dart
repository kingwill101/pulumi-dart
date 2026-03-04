// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption status for an instance.
class DiskEncryptionStatusResponse {
  /// This is always `sql#diskEncryptionStatus`.
  final pulumi.Input<String> kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  final pulumi.Input<String> kmsKeyVersionName;

  /// Creates a new [DiskEncryptionStatusResponse].
  /// [kind] This is always `sql#diskEncryptionStatus`.
  /// [kmsKeyVersionName] KMS key version used to encrypt the Cloud SQL instance resource
  DiskEncryptionStatusResponse({
    required this.kind,
    required this.kmsKeyVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'kmsKeyVersionName': kmsKeyVersionName,
    };
  }

  factory DiskEncryptionStatusResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionStatusResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kmsKeyVersionName: pulumi.Input.fromValue(
        map['kmsKeyVersionName'] as String,
      ),
    );
  }
}
