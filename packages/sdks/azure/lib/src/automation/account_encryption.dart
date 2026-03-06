// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountEncryption {
  final pulumi.Input<String>? keySource;
  /// The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account.
  final pulumi.Input<String> keyVaultKeyId;
  /// The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [AccountEncryption].
  /// [keySource] Optional.
  /// [keyVaultKeyId] The ID of the Key Vault Key which should be used to Encrypt the data in this Automation Account.
  /// [userAssignedIdentityId] The User Assigned Managed Identity ID to be used for accessing the Customer Managed Key for encryption.
  const AccountEncryption({
    this.keySource,
    required this.keyVaultKeyId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': ?keySource,
      'keyVaultKeyId': keyVaultKeyId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory AccountEncryption.fromMap(Map<String, dynamic> map) {
    return AccountEncryption(
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

