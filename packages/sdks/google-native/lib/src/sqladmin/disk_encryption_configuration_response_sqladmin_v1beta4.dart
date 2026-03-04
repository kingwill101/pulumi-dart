// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption configuration for an instance.
class DiskEncryptionConfigurationResponseSqladminV1beta4 {
  /// This is always `sql#diskEncryptionConfiguration`.
  final pulumi.Input<String> kind;

  /// Resource name of KMS key for disk encryption
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [DiskEncryptionConfigurationResponseSqladminV1beta4].
  /// [kind] This is always `sql#diskEncryptionConfiguration`.
  /// [kmsKeyName] Resource name of KMS key for disk encryption
  DiskEncryptionConfigurationResponseSqladminV1beta4({
    required this.kind,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': kind, 'kmsKeyName': kmsKeyName};
  }

  factory DiskEncryptionConfigurationResponseSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskEncryptionConfigurationResponseSqladminV1beta4(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
