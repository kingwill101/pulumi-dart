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
    this.federatedIdentityClientId,
    this.keyName,
    this.keyVaultId,
    this.keyVaultKeyId,
    this.keyVaultUri,
    this.keyVersion,
    this.managedHsmKeyId,
    required this.storageAccountId,
    this.userAssignedIdentityId,
  });

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
      federatedIdentityClientId: map['federatedIdentityClientId'] == null ? null : (map['federatedIdentityClientId'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      keyVaultKeyId: map['keyVaultKeyId'] == null ? null : (map['keyVaultKeyId'] as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri'] as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion'] as String).input(),
      managedHsmKeyId: map['managedHsmKeyId'] == null ? null : (map['managedHsmKeyId'] as String).input(),
      storageAccountId: (map['storageAccountId'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId'] as String).input(),
    );
  }
}

