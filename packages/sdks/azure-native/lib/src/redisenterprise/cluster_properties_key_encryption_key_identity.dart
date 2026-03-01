// ignore_for_file: unused_element, unnecessary_cast


/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class ClusterPropertiesKeyEncryptionKeyIdentity {
  /// Only userAssignedIdentity is supported in this API version; other types may be supported in the future
  final String? identityType;
  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/<sub uuid>/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  final String? userAssignedIdentityResourceId;

  /// Creates a new [ClusterPropertiesKeyEncryptionKeyIdentity].
  /// [identityType] Only userAssignedIdentity is supported in this API version; other types may be supported in the future
  /// [userAssignedIdentityResourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/<sub uuid>/resourceGroups/<resource group>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  ClusterPropertiesKeyEncryptionKeyIdentity({
    this.identityType,
    this.userAssignedIdentityResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': ?identityType,
      'userAssignedIdentityResourceId': ?userAssignedIdentityResourceId,
    };
  }

  factory ClusterPropertiesKeyEncryptionKeyIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterPropertiesKeyEncryptionKeyIdentity(
      identityType: map['identityType'] == null ? null : map['identityType'] as String,
      userAssignedIdentityResourceId: map['userAssignedIdentityResourceId'] == null ? null : map['userAssignedIdentityResourceId'] as String,
    );
  }
}

