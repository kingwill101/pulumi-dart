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
      federatedIdentityClientId: (() {
        final guardedValue = map['federatedIdentityClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultId: (() {
        final guardedValue = map['keyVaultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultKeyId: (() {
        final guardedValue = map['keyVaultKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVaultUri: (() {
        final guardedValue = map['keyVaultUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyVersion: (() {
        final guardedValue = map['keyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedHsmKeyId: (() {
        final guardedValue = map['managedHsmKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAccountId: pulumi.Input.fromValue(
        map['storageAccountId'] as String,
      ),
      userAssignedIdentityId: (() {
        final guardedValue = map['userAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
