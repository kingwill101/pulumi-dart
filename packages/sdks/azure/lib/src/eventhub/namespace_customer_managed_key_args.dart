// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
/// The set of arguments for NamespaceCustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_eventhub_namespace_customer_managed_key_namespace_customer_managed_key_args_doc}
class NamespaceCustomerManagedKeyArgs {
  /// The ID of the EventHub Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventhubNamespaceId;
  /// Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  final pulumi.Input<bool>? infrastructureEncryptionEnabled;
  /// The list of keys of Key Vault.
  final pulumi.Input<List<String>> keyVaultKeyIds;
  /// The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys.
  ///
  /// > **Note:** If using `user_assigned_identity_id`, ensure the User Assigned Identity is also assigned to the parent Event Hub.
  ///
  /// > **Note:** If using `user_assigned_identity_id`, make sure to assign the identity the appropriate permissions to access the Key Vault key. Failure to grant `Get, UnwrapKey, and WrapKey` will cause this resource to fail to apply.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [NamespaceCustomerManagedKeyArgs].
  /// [eventhubNamespaceId] The ID of the EventHub Namespace. Changing this forces a new resource to be created.
  /// [infrastructureEncryptionEnabled] Whether to enable Infrastructure Encryption (Double Encryption). Changing this forces a new resource to be created.
  /// [keyVaultKeyIds] The list of keys of Key Vault.
  /// [userAssignedIdentityId] The ID of a User Managed Identity that will be used to access Key Vaults that contain the encryption keys.
  NamespaceCustomerManagedKeyArgs({
    required pulumi.Output<String> eventhubNamespaceId,
    pulumi.Output<bool>? infrastructureEncryptionEnabled,
    required pulumi.Output<List<String>> keyVaultKeyIds,
    pulumi.Output<String>? userAssignedIdentityId,
  }) :
      eventhubNamespaceId = pulumi.Input.asInput<String>(eventhubNamespaceId),
      infrastructureEncryptionEnabled = pulumi.Input.asOptionalInput<bool>(infrastructureEncryptionEnabled),
      keyVaultKeyIds = pulumi.Input.asInput<List<String>>(keyVaultKeyIds),
      userAssignedIdentityId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubNamespaceId': eventhubNamespaceId,
      'infrastructureEncryptionEnabled': ?infrastructureEncryptionEnabled,
      'keyVaultKeyIds': keyVaultKeyIds,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory NamespaceCustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceCustomerManagedKeyArgs(
      eventhubNamespaceId: pulumi.Output.create<String>(map['eventhubNamespaceId'] as String),
      infrastructureEncryptionEnabled: map['infrastructureEncryptionEnabled'] == null ? null : pulumi.Output.create<bool>(map['infrastructureEncryptionEnabled'] as bool),
      keyVaultKeyIds: pulumi.Output.create<List<String>>((map['keyVaultKeyIds'] as List).cast<String>()),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['userAssignedIdentityId'] as String),
    );
  }
}

