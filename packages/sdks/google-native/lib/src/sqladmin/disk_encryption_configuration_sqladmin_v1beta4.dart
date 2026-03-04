// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk encryption configuration for an instance.
class DiskEncryptionConfigurationSqladminV1beta4 {
  /// This is always `sql#diskEncryptionConfiguration`.
  final pulumi.Input<String>? kind;

  /// Resource name of KMS key for disk encryption
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [DiskEncryptionConfigurationSqladminV1beta4].
  /// [kind] This is always `sql#diskEncryptionConfiguration`.
  /// [kmsKeyName] Resource name of KMS key for disk encryption
  DiskEncryptionConfigurationSqladminV1beta4({this.kind, this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': ?kind, 'kmsKeyName': ?kmsKeyName};
  }

  factory DiskEncryptionConfigurationSqladminV1beta4.fromMap(
    Map<String, dynamic> map,
  ) {
    return DiskEncryptionConfigurationSqladminV1beta4(
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyName: (() {
        final guardedValue = map['kmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
