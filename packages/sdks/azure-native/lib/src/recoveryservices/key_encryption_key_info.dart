// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key Encryption Key (KEK) information.
class KeyEncryptionKeyInfo {
  /// The key URL / identifier.
  final pulumi.Input<String>? keyIdentifier;
  /// The KeyVault resource ARM Id for key.
  final pulumi.Input<String>? keyVaultResourceArmId;

  /// Creates a new [KeyEncryptionKeyInfo].
  /// [keyIdentifier] The key URL / identifier.
  /// [keyVaultResourceArmId] The KeyVault resource ARM Id for key.
  const KeyEncryptionKeyInfo({
    this.keyIdentifier,
    this.keyVaultResourceArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyIdentifier': ?keyIdentifier,
      'keyVaultResourceArmId': ?keyVaultResourceArmId,
    };
  }

  factory KeyEncryptionKeyInfo.fromMap(Map<String, dynamic> map) {
    return KeyEncryptionKeyInfo(
      keyIdentifier: (() { final guardedValue = map['keyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultResourceArmId: (() { final guardedValue = map['keyVaultResourceArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
