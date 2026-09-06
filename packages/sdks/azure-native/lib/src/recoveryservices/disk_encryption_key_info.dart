// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk Encryption Key Information (BitLocker Encryption Key (BEK) on Windows).
class DiskEncryptionKeyInfo {
  /// The KeyVault resource ARM id for secret.
  final pulumi.Input<String?>? keyVaultResourceArmId;
  /// The secret url / identifier.
  final pulumi.Input<String?>? secretIdentifier;

  /// Creates a new [DiskEncryptionKeyInfo].
  /// [keyVaultResourceArmId] The KeyVault resource ARM id for secret.
  /// [secretIdentifier] The secret url / identifier.
  const DiskEncryptionKeyInfo({
    this.keyVaultResourceArmId,
    this.secretIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultResourceArmId': ?keyVaultResourceArmId,
      'secretIdentifier': ?secretIdentifier,
    };
  }

  factory DiskEncryptionKeyInfo.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionKeyInfo(
      keyVaultResourceArmId: (() { final guardedValue = map['keyVaultResourceArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretIdentifier: (() { final guardedValue = map['secretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
