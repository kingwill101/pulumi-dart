// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// All identity configuration for Customer-managed key settings defining which identity should be used to auth to Key Vault.
class ClusterPropertiesKeyEncryptionKeyIdentity {
  /// Only userAssignedIdentity is supported in this API version; other types may be supported in the future
  final pulumi.Input<String>? identityType;

  /// User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/&lt;sub uuid&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
  final pulumi.Input<String>? userAssignedIdentityResourceId;

  /// Creates a new [ClusterPropertiesKeyEncryptionKeyIdentity].
  /// [identityType] Only userAssignedIdentity is supported in this API version; other types may be supported in the future
  /// [userAssignedIdentityResourceId] User assigned identity to use for accessing key encryption key Url. Ex: /subscriptions/&lt;sub uuid&gt;/resourceGroups/&lt;resource group&gt;/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myId.
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

  factory ClusterPropertiesKeyEncryptionKeyIdentity.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterPropertiesKeyEncryptionKeyIdentity(
      identityType: (() {
        final guardedValue = map['identityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentityResourceId: (() {
        final guardedValue = map['userAssignedIdentityResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
