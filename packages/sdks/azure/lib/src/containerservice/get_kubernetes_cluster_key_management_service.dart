// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClusterKeyManagementService {
  /// Identifier of Azure Key Vault key. See [key identifier format](https://learn.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details.
  final pulumi.Input<String> keyVaultKeyId;

  /// Network access of the key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link.
  final pulumi.Input<String> keyVaultNetworkAccess;

  /// Creates a new [GetKubernetesClusterKeyManagementService].
  /// [keyVaultKeyId] Identifier of Azure Key Vault key. See [key identifier format](https://learn.microsoft.com/en-us/azure/key-vault/general/about-keys-secrets-certificates#vault-name-and-object-name) for more details.
  /// [keyVaultNetworkAccess] Network access of the key vault. The possible values are `Public` and `Private`. `Public` means the key vault allows public access from all networks. `Private` means the key vault disables public access and enables private link.
  GetKubernetesClusterKeyManagementService({
    required this.keyVaultKeyId,
    required this.keyVaultNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultKeyId': keyVaultKeyId,
      'keyVaultNetworkAccess': keyVaultNetworkAccess,
    };
  }

  factory GetKubernetesClusterKeyManagementService.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetKubernetesClusterKeyManagementService(
      keyVaultKeyId: pulumi.Input.fromValue(map['keyVaultKeyId'] as String),
      keyVaultNetworkAccess: pulumi.Input.fromValue(
        map['keyVaultNetworkAccess'] as String,
      ),
    );
  }
}
