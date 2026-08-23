// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_account_encryption_account_encryption_args_doc}
/// The set of arguments for AccountEncryption.
/// {@endtemplate}
/// {@macro pulumi_netapp_account_encryption_account_encryption_args_doc}
class AccountEncryptionArgs {
  /// The full resource ID of the cross-tenant key vault. This is recommended when using `federatedClientId` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  final pulumi.Input<String>? crossTenantKeyVaultResourceId;
  /// Specify the versionless ID of the encryption key.
  final pulumi.Input<String> encryptionKey;
  /// The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  final pulumi.Input<String>? federatedClientId;
  /// The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  final pulumi.Input<String> netappAccountId;
  /// The ID of the System Assigned Manged Identity. Conflicts with `userAssignedIdentityId`.
  final pulumi.Input<String>? systemAssignedIdentityPrincipalId;
  /// The ID of the User Assigned Managed Identity. Conflicts with `systemAssignedIdentityPrincipalId`.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [AccountEncryptionArgs].
  /// [crossTenantKeyVaultResourceId] The full resource ID of the cross-tenant key vault. This is recommended when using `federatedClientId` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  /// [encryptionKey] Specify the versionless ID of the encryption key.
  /// [federatedClientId] The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  /// [netappAccountId] The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  /// [systemAssignedIdentityPrincipalId] The ID of the System Assigned Manged Identity. Conflicts with `userAssignedIdentityId`.
  /// [userAssignedIdentityId] The ID of the User Assigned Managed Identity. Conflicts with `systemAssignedIdentityPrincipalId`.
  const AccountEncryptionArgs({
    this.crossTenantKeyVaultResourceId,
    required this.encryptionKey,
    this.federatedClientId,
    required this.netappAccountId,
    this.systemAssignedIdentityPrincipalId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantKeyVaultResourceId': ?crossTenantKeyVaultResourceId,
      'encryptionKey': encryptionKey,
      'federatedClientId': ?federatedClientId,
      'netappAccountId': netappAccountId,
      'systemAssignedIdentityPrincipalId': ?systemAssignedIdentityPrincipalId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory AccountEncryptionArgs.fromMap(Map<String, dynamic> map) {
    return AccountEncryptionArgs(
      crossTenantKeyVaultResourceId: (() { final guardedValue = map['crossTenantKeyVaultResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: pulumi.Input.fromValue(map['encryptionKey'] as String),
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netappAccountId: pulumi.Input.fromValue(map['netappAccountId'] as String),
      systemAssignedIdentityPrincipalId: (() { final guardedValue = map['systemAssignedIdentityPrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
