// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureClusterControlPlaneDatabaseEncryption {
  /// The ARM ID of the Azure Key Vault key to encrypt / decrypt data. For example: `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-id&gt;/providers/Microsoft.KeyVault/vaults/&lt;key-vault-id&gt;/keys/&lt;key-name&gt;` Encryption will always take the latest version of the key and hence specific version is not supported.
  final pulumi.Input<String> keyId;

  /// Creates a new [AzureClusterControlPlaneDatabaseEncryption].
  /// [keyId] The ARM ID of the Azure Key Vault key to encrypt / decrypt data. For example: `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-id&gt;/providers/Microsoft.KeyVault/vaults/&lt;key-vault-id&gt;/keys/&lt;key-name&gt;` Encryption will always take the latest version of the key and hence specific version is not supported.
  const AzureClusterControlPlaneDatabaseEncryption({
    required this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
    };
  }

  factory AzureClusterControlPlaneDatabaseEncryption.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlaneDatabaseEncryption(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
    );
  }
}

