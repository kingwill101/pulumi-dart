// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountEncryption.
class GetAccountEncryptionResult {
  final String? crossTenantKeyVaultResourceId;
  final String? encryptionKey;
  final String? federatedClientId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? netappAccountId;
  final String? systemAssignedIdentityPrincipalId;
  final String? userAssignedIdentityId;

  /// Creates a new [GetAccountEncryptionResult].
  /// [crossTenantKeyVaultResourceId] Optional.
  /// [encryptionKey] Optional.
  /// [federatedClientId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [netappAccountId] Optional.
  /// [systemAssignedIdentityPrincipalId] Optional.
  /// [userAssignedIdentityId] Optional.
  const GetAccountEncryptionResult({
    this.crossTenantKeyVaultResourceId,
    this.encryptionKey,
    this.federatedClientId,
    this.id,
    this.netappAccountId,
    this.systemAssignedIdentityPrincipalId,
    this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossTenantKeyVaultResourceId': ?crossTenantKeyVaultResourceId,
      'encryptionKey': ?encryptionKey,
      'federatedClientId': ?federatedClientId,
      'id': ?id,
      'netappAccountId': ?netappAccountId,
      'systemAssignedIdentityPrincipalId': ?systemAssignedIdentityPrincipalId,
      'userAssignedIdentityId': ?userAssignedIdentityId,
    };
  }

  factory GetAccountEncryptionResult.fromMap(Map<String, dynamic> map) {
    return GetAccountEncryptionResult(
      crossTenantKeyVaultResourceId: (() { final guardedValue = map['crossTenantKeyVaultResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      federatedClientId: (() { final guardedValue = map['federatedClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      netappAccountId: (() { final guardedValue = map['netappAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemAssignedIdentityPrincipalId: (() { final guardedValue = map['systemAssignedIdentityPrincipalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userAssignedIdentityId: (() { final guardedValue = map['userAssignedIdentityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
