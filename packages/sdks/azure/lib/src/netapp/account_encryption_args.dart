// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_account_encryption_account_encryption_args_doc}
/// The set of arguments for AccountEncryption.
/// {@endtemplate}
/// {@macro pulumi_netapp_account_encryption_account_encryption_args_doc}
class AccountEncryptionArgs {
  /// The full resource ID of the cross-tenant key vault. This is recommended when using `federated_client_id` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  final pulumi.Input<String>? crossTenantKeyVaultResourceId;
  /// Specify the versionless ID of the encryption key.
  final pulumi.Input<String> encryptionKey;
  /// The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  final pulumi.Input<String>? federatedClientId;
  /// The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  final pulumi.Input<String> netappAccountId;
  /// The ID of the System Assigned Manged Identity. Conflicts with `user_assigned_identity_id`.
  final pulumi.Input<String>? systemAssignedIdentityPrincipalId;
  /// The ID of the User Assigned Managed Identity. Conflicts with `system_assigned_identity_principal_id`.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [AccountEncryptionArgs].
  /// [crossTenantKeyVaultResourceId] The full resource ID of the cross-tenant key vault. This is recommended when using `federated_client_id` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  /// [encryptionKey] Specify the versionless ID of the encryption key.
  /// [federatedClientId] The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  /// [netappAccountId] The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  /// [systemAssignedIdentityPrincipalId] The ID of the System Assigned Manged Identity. Conflicts with `user_assigned_identity_id`.
  /// [userAssignedIdentityId] The ID of the User Assigned Managed Identity. Conflicts with `system_assigned_identity_principal_id`.
  AccountEncryptionArgs({
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
      crossTenantKeyVaultResourceId: map['crossTenantKeyVaultResourceId'] == null ? null : (map['crossTenantKeyVaultResourceId'] as String).input(),
      encryptionKey: (map['encryptionKey'] as String).input(),
      federatedClientId: map['federatedClientId'] == null ? null : (map['federatedClientId'] as String).input(),
      netappAccountId: (map['netappAccountId'] as String).input(),
      systemAssignedIdentityPrincipalId: map['systemAssignedIdentityPrincipalId'] == null ? null : (map['systemAssignedIdentityPrincipalId'] as String).input(),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : (map['userAssignedIdentityId'] as String).input(),
    );
  }
}

