// ignore_for_file: unused_element, unnecessary_cast


/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class KeyEncryptionKeyIdentity {
  /// application client identity to use for accessing key encryption key Url in a different tenant. Ex: f83c6b1b-4d34-47e4-bb34-9d83df58b540
  final String? federatedClientId;
  /// The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
  final String? identityType;
  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [KeyEncryptionKeyIdentity].
  /// [federatedClientId] application client identity to use for accessing key encryption key Url in a different tenant. Ex: f83c6b1b-4d34-47e4-bb34-9d83df58b540
  /// [identityType] The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
  /// [userAssignedIdentityResourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/fa5fc227-a624-475e-b696-cdd604c735bc/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId. Mutually exclusive with identityType systemAssignedIdentity.
  KeyEncryptionKeyIdentity({
    this.federatedClientId,
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedClientId': ?federatedClientId,
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory KeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return KeyEncryptionKeyIdentity(
      federatedClientId: map['federatedClientId'] == null ? null : map['federatedClientId'] as String,
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

