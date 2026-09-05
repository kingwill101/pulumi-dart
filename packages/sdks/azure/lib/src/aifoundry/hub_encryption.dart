// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubEncryption {
  /// The Key Vault URI to access the encryption key.
  final pulumi.Input<String> keyId;
  /// The Key Vault ID where the customer owned encryption key exists.
  final pulumi.Input<String> keyVaultId;
  /// The user assigned identity ID that has access to the encryption key.
  ///
  /// &gt; **Note:** `userAssignedIdentityId` must be set when`identity.type` is `UserAssigned` in order for the service to find the assigned permissions.
  final pulumi.Input<String?>? userAssignedIdentityId;

  /// Creates a new [HubEncryption].
  /// [keyId] The Key Vault URI to access the encryption key.
  /// [keyVaultId] The Key Vault ID where the customer owned encryption key exists.
  /// [userAssignedIdentityId] The user assigned identity ID that has access to the encryption key.
  const HubEncryption({
    required this.keyId,
    required this.keyVaultId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'keyVaultId': keyVaultId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory HubEncryption.fromMap(Map<String, dynamic> map) {
    return HubEncryption(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
