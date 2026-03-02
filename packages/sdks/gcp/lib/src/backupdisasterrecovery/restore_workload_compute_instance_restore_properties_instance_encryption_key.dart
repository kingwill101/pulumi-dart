// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey {
  /// (Optional)
  final pulumi.Input<String>? kmsKeyName;
  /// (Optional)
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// (Optional)
  final pulumi.Input<String>? rawKey;
  /// (Optional)
  final pulumi.Input<String>? rsaEncryptedKey;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey].
  /// [kmsKeyName] (Optional)
  /// [kmsKeyServiceAccount] (Optional)
  /// [rawKey] (Optional)
  /// [rsaEncryptedKey] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey({
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

  factory RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesInstanceEncryptionKey(
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName'] as String).input(),
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : (map['kmsKeyServiceAccount'] as String).input(),
      rawKey: map['rawKey'] == null ? null : (map['rawKey'] as String).input(),
      rsaEncryptedKey: map['rsaEncryptedKey'] == null ? null : (map['rsaEncryptedKey'] as String).input(),
    );
  }
}

