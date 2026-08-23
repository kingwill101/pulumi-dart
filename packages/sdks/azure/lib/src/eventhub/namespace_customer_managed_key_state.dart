// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceCustomerManagedKey resources.
class NamespaceCustomerManagedKeyState {
  /// The ID of the EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventhubNamespaceId;
  /// Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;
  /// The list of keys of Key Vault.
  final pulumi.Input<List<String>>? keyVaultKeyIds;
  /// The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys.
  ///
  /// &gt; **Note:** If using `userAssignedIdentityId`, ensure the User Assigned Identity is also assigned to the parent Event Hub.
  ///
  /// &gt; **Note:** If using `userAssignedIdentityId`, make sure to assign the identity the appropriate permissions to access the Key Vault key. Failure to grant `Get, UnwrapKey, and WrapKey` will cause this resource to fail to apply.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [NamespaceCustomerManagedKeyState].
  /// [eventhubNamespaceId] The ID of the EventHub Namespace. Changing this forces a new resource to be created.
  /// [infrastructureEncryptionEnabled] Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  /// [keyVaultKeyIds] The list of keys of Key Vault.
  /// [userAssignedIdentityId] The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys.
  const NamespaceCustomerManagedKeyState({
    this.eventhubNamespaceId,
    this.infrastructureEncryptionEnabled,
    this.keyVaultKeyIds,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubNamespaceId': ?eventhubNamespaceId,
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'keyVaultKeyIds': ?keyVaultKeyIds,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory NamespaceCustomerManagedKeyState.fromMap(Map<String, dynamic> map) {
    return NamespaceCustomerManagedKeyState(
      eventhubNamespaceId: (() { final guardedValue = map['eventhubNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructureEncryptionEnabled: (() { final guardedValue = map['infrastructureEncryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyIds: (() { final guardedValue = map['keyVaultKeyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
