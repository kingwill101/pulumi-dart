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
  KeyEncryptionKeyInfo({
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
      keyIdentifier: map['keyIdentifier'] == null ? null : (map['keyIdentifier']! as String).input(),
      keyVaultResourceArmId: map['keyVaultResourceArmId'] == null ? null : (map['keyVaultResourceArmId']! as String).input(),
    );
  }
}

