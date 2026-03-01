// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountEncryption resources.
class AccountEncryptionState {
  /// The full resource ID of the cross-tenant key vault. This is recommended when using `federated_client_id` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  final pulumi.Input<String>? crossTenantKeyVaultResourceId;
  /// Specify the versionless ID of the encryption key.
  final pulumi.Input<String>? encryptionKey;
  /// The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  final pulumi.Input<String>? federatedClientId;
  /// The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  final pulumi.Input<String>? netappAccountId;
  /// The ID of the System Assigned Manged Identity. Conflicts with `user_assigned_identity_id`.
  final pulumi.Input<String>? systemAssignedIdentityPrincipalId;
  /// The ID of the User Assigned Managed Identity. Conflicts with `system_assigned_identity_principal_id`.
  final pulumi.Input<String>? userAssignedIdentityId;

  /// Creates a new [AccountEncryptionState].
  /// [crossTenantKeyVaultResourceId] The full resource ID of the cross-tenant key vault. This is recommended when using `federated_client_id` for cross-tenant scenarios to ensure proper validation by Azure APIs.
  /// [encryptionKey] Specify the versionless ID of the encryption key.
  /// [federatedClientId] The Client ID of the multi-tenant Entra ID application used to access cross-tenant key vaults. This is only required when accessing a key vault in a different tenant than the NetApp account.
  /// [netappAccountId] The ID of the NetApp account where volume under it will have customer managed keys-based encryption enabled.
  /// [systemAssignedIdentityPrincipalId] The ID of the System Assigned Manged Identity. Conflicts with `user_assigned_identity_id`.
  /// [userAssignedIdentityId] The ID of the User Assigned Managed Identity. Conflicts with `system_assigned_identity_principal_id`.
  AccountEncryptionState({
    pulumi.Output<String>? crossTenantKeyVaultResourceId,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? federatedClientId,
    pulumi.Output<String>? netappAccountId,
    pulumi.Output<String>? systemAssignedIdentityPrincipalId,
    pulumi.Output<String>? userAssignedIdentityId,
  }) :
      crossTenantKeyVaultResourceId = pulumi.Input.asOptionalInput<String>(crossTenantKeyVaultResourceId),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      federatedClientId = pulumi.Input.asOptionalInput<String>(federatedClientId),
      netappAccountId = pulumi.Input.asOptionalInput<String>(netappAccountId),
      systemAssignedIdentityPrincipalId = pulumi.Input.asOptionalInput<String>(systemAssignedIdentityPrincipalId),
      userAssignedIdentityId = pulumi.Input.asOptionalInput<String>(userAssignedIdentityId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantKeyVaultResourceId': ?crossTenantKeyVaultResourceId,
      'encryptionKey': ?encryptionKey,
      'federatedClientId': ?federatedClientId,
      'netappAccountId': ?netappAccountId,
      'systemAssignedIdentityPrincipalId': ?systemAssignedIdentityPrincipalId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory AccountEncryptionState.fromMap(Map<String, dynamic> map) {
    return AccountEncryptionState(
      crossTenantKeyVaultResourceId: map['crossTenantKeyVaultResourceId'] == null ? null : pulumi.Output.create<String>(map['crossTenantKeyVaultResourceId'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      federatedClientId: map['federatedClientId'] == null ? null : pulumi.Output.create<String>(map['federatedClientId'] as String),
      netappAccountId: map['netappAccountId'] == null ? null : pulumi.Output.create<String>(map['netappAccountId'] as String),
      systemAssignedIdentityPrincipalId: map['systemAssignedIdentityPrincipalId'] == null ? null : pulumi.Output.create<String>(map['systemAssignedIdentityPrincipalId'] as String),
      userAssignedIdentityId: map['userAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['userAssignedIdentityId'] as String),
    );
  }
}

