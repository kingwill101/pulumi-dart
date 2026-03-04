// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption identity for the storage account.
class EncryptionIdentity {
  /// ClientId of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  final pulumi.Input<String>? encryptionFederatedIdentityClientId;

  /// Resource identifier of the UserAssigned identity to be associated with server-side encryption on the storage account.
  final pulumi.Input<String>? encryptionUserAssignedIdentity;

  /// Creates a new [EncryptionIdentity].
  /// [encryptionFederatedIdentityClientId] ClientId of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  /// [encryptionUserAssignedIdentity] Resource identifier of the UserAssigned identity to be associated with server-side encryption on the storage account.
  EncryptionIdentity({
    this.encryptionFederatedIdentityClientId,
    this.encryptionUserAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionFederatedIdentityClientId':
          ?encryptionFederatedIdentityClientId,
      'encryptionUserAssignedIdentity': ?encryptionUserAssignedIdentity,
    };
  }

  factory EncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentity(
      encryptionFederatedIdentityClientId: (() {
        final guardedValue = map['encryptionFederatedIdentityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionUserAssignedIdentity: (() {
        final guardedValue = map['encryptionUserAssignedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
