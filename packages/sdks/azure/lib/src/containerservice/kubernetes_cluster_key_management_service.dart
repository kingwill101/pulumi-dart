// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterKeyManagementService {
  /// Identifier of Azure Key Vault key. See [key identifier format](https://learn.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details.
  final String keyVaultKeyId;
  /// Network access of the key vault Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. Defaults to `Public`.
  final String? keyVaultNetworkAccess;

  /// Creates a new [KubernetesClusterKeyManagementService].
  /// [keyVaultKeyId] Identifier of Azure Key Vault key. See [key identifier format](https://learn.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details.
  /// [keyVaultNetworkAccess] Network access of the key vault Network access of key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link. Defaults to `Public`.
  KubernetesClusterKeyManagementService({
    required this.keyVaultKeyId,
    this.keyVaultNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'keyVaultNetworkAccess': ?keyVaultNetworkAccess,
    };
  }

  factory KubernetesClusterKeyManagementService.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterKeyManagementService(
      keyVaultKeyId: map['keyVaultKeyId'] as String,
      keyVaultNetworkAccess: map['keyVaultNetworkAccess'] == null ? null : map['keyVaultNetworkAccess'] as String,
    );
  }
}

