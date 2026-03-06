// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceEncryption {
  /// The Key Vault URI to access the encryption key.
  final pulumi.Input<String> keyId;
  /// The ID of the keyVault where the customer owned encryption key is present.
  final pulumi.Input<String> keyVaultId;
  /// The Key Vault URI to access the encryption key.
  ///
  /// &gt; **Note:** `user_assigned_identity_id` must set when`identity.type` is `UserAssigned` or service won't be able to find the assigned permissions.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [WorkspaceEncryption].
  /// [keyId] The Key Vault URI to access the encryption key.
  /// [keyVaultId] The ID of the keyVault where the customer owned encryption key is present.
  /// [userAssignedIdentityId] The Key Vault URI to access the encryption key.
  const WorkspaceEncryption({
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

  factory WorkspaceEncryption.fromMap(Map<String, dynamic> map) {
    return WorkspaceEncryption(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      keyVaultId: pulumi.Input.fromValue(map['keyVaultId'] as String),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

