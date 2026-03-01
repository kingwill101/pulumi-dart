// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_customer_managed_key_customer_managed_key_args_doc}
/// The set of arguments for CustomerManagedKey.
/// {@endtemplate}
/// {@macro pulumi_storage_customer_managed_key_customer_managed_key_args_doc}
class CustomerManagedKeyArgs {
  /// The Client ID of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  final pulumi.Input<String>? federatedIdentityClientId;
  final pulumi.Input<String>? keyName;
  final pulumi.Input<String>? keyVaultId;
  /// The ID of the Key Vault Key.
  final pulumi.Input<String>? keyVaultKeyId;
  final pulumi.Input<String>? keyVaultUri;
  final pulumi.Input<String>? keyVersion;
  final pulumi.Input<String>? managedHsmKeyId;
  /// The ID of the Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;
  /// The ID of a user assigned identity.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [CustomerManagedKeyArgs].
  /// [federatedIdentityClientId] The Client ID of the multi-tenant application to be used in conjunction with the user-assigned identity for cross-tenant customer-managed-keys server-side encryption on the storage account.
  /// [keyName] Optional.
  /// [keyVaultId] Optional.
  /// [keyVaultKeyId] The ID of the Key Vault Key.
  /// [keyVaultUri] Optional.
  /// [keyVersion] Optional.
  /// [managedHsmKeyId] Optional.
  /// [storageAccountId] The ID of the Storage Account. Changing this forces a new resource to be created.
  /// [userAssignedIdentityId] The ID of a user assigned identity.
  CustomerManagedKeyArgs({
    pulumi.Output<String>? federatedIdentityClientId,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? keyVaultKeyId,
    pulumi.Output<String>? keyVaultUri,
    pulumi.Output<String>? keyVersion,
    pulumi.Output<String>? managedHsmKeyId,
    required pulumi.Output<String> storageAccountId,
    pulumi.Output<String>? userAssignedIdentityId,
  }) :
      federatedIdentityClientId = pulumi.Input.asOptionalInput<String>(federatedIdentityClientId),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      keyVaultKeyId = pulumi.Input.asOptionalInput<String>(keyVaultKeyId),
      keyVaultUri = pulumi.Input.asOptionalInput<String>(keyVaultUri),
      keyVersion = pulumi.Input.asOptionalInput<String>(keyVersion),
      managedHsmKeyId = pulumi.Input.asOptionalInput<String>(managedHsmKeyId),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId),
      userAssignedIdentityId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'federatedIdentityClientId': ?federatedIdentityClientId,
      'keyName': ?keyName,
      'keyVaultId': ?keyVaultId,
      'keyVaultKeyId': ?keyVaultKeyId,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
      'managedHsmKeyId': ?managedHsmKeyId,
      'storageAccountId': storageAccountId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory CustomerManagedKeyArgs.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyArgs(
      federatedIdentityClientId: map['federatedIdentityClientId'] == null ? null : pulumi.Output.create<String>(map['federatedIdentityClientId'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : pulumi.Output.create<String>(map['keyVaultKeyId'] as String),
      keyVaultUri: map['keyVaultUri'] == null ? null : pulumi.Output.create<String>(map['keyVaultUri'] as String),
      keyVersion: map['keyVersion'] == null ? null : pulumi.Output.create<String>(map['keyVersion'] as String),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : pulumi.Output.create<String>(map['managedHsmKeyId'] as String),
      storageAccountId: pulumi.Output.create<String>(map['storageAccountId'] as String),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['userAssignedIdentityId'] as String),
    );
  }
}

