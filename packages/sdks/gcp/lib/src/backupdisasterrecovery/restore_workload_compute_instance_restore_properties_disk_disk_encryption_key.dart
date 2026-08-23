// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey {
  /// (Optional)
  final pulumi.Input<String>? kmsKeyName;
  /// (Optional)
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? rawKey;
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? rsaEncryptedKey;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey].
  /// [kmsKeyName] (Optional)
  /// [kmsKeyServiceAccount] (Optional)
  /// [rawKey] **Note**: This property is sensitive and will not be displayed in the plan.
  /// [rsaEncryptedKey] **Note**: This property is sensitive and will not be displayed in the plan.
  const RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesDiskDiskEncryptionKey(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyServiceAccount: (() { final guardedValue = map['kmsKeyServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
