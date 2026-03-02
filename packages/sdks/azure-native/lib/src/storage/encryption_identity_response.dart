// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption identity for the storage account.
class EncryptionIdentityResponse {
  /// ClientId of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  final pulumi.Input<String>? encryptionFederatedIdentityClientId;
  /// Resource identifier of the UserAssigned identity to be associated with server-side encryption on the storage account.
  final pulumi.Input<String>? encryptionUserAssignedIdentity;

  /// Creates a new [EncryptionIdentityResponse].
  /// [encryptionFederatedIdentityClientId] ClientId of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  /// [encryptionUserAssignedIdentity] Resource identifier of the UserAssigned identity to be associated with server-side encryption on the storage account.
  EncryptionIdentityResponse({
    this.encryptionFederatedIdentityClientId,
    this.encryptionUserAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionFederatedIdentityClientId': ?encryptionFederatedIdentityClientId,
      'encryptionUserAssignedIdentity': ?encryptionUserAssignedIdentity,
    };
  }

  factory EncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentityResponse(
      encryptionFederatedIdentityClientId: map['encryptionFederatedIdentityClientId'] == null ? null : (map['encryptionFederatedIdentityClientId']! as String).input(),
      encryptionUserAssignedIdentity: map['encryptionUserAssignedIdentity'] == null ? null : (map['encryptionUserAssignedIdentity']! as String).input(),
    );
  }
}

