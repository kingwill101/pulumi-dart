// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureClusterControlPlaneProxyConfig {
  /// The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-name&gt;`
  final pulumi.Input<String> resourceGroupId;

  /// The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:&lt;key-vault-name&gt;.vault.azure.net/secrets/&lt;secret-name&gt;/&lt;secret-version&gt;`.
  final pulumi.Input<String> secretId;

  /// Creates a new [AzureClusterControlPlaneProxyConfig].
  /// [resourceGroupId] The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-name&gt;`
  /// [secretId] The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:&lt;key-vault-name&gt;.vault.azure.net/secrets/&lt;secret-name&gt;/&lt;secret-version&gt;`.
  AzureClusterControlPlaneProxyConfig({
    required this.resourceGroupId,
    required this.secretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupId': resourceGroupId,
      'secretId': secretId,
    };
  }

  factory AzureClusterControlPlaneProxyConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureClusterControlPlaneProxyConfig(
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      secretId: pulumi.Input.fromValue(map['secretId'] as String),
    );
  }
}
