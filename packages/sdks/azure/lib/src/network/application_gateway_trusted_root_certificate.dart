// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayTrustedRootCertificate {
  /// The contents of the Trusted Root Certificate which should be used. Required if `key_vault_secret_id` is not set.
  final pulumi.Input<String>? data;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Secret ID of the (base-64 encoded unencrypted pfx) `Secret` or `Certificate` object stored in Azure KeyVault. You need to enable soft delete for the Key Vault to use this feature. Required if `data` is not set.
  ///
  /// > **Note:** To implement certificate rotation, `versionless_secret_id` should be used, although `secret_id` is also supported.
  ///
  /// > **Note:** TLS termination with Key Vault certificates is limited to the [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/key-vault-certs).
  ///
  /// > **Note:** For TLS termination with Key Vault certificates to work properly, an existing user-assigned managed identity, which Application Gateway uses to retrieve certificates from Key Vault, should be defined via `identity` block. Additionally, access policies in the Key Vault to allow the identity to be granted *get* access to the secret should be defined.
  final pulumi.Input<String>? keyVaultSecretId;
  /// The Name of the Trusted Root Certificate to use.
  final pulumi.Input<String> name;

  /// Creates a new [ApplicationGatewayTrustedRootCertificate].
  /// [data] The contents of the Trusted Root Certificate which should be used. Required if `key_vault_secret_id` is not set.
  /// [id] The ID of the Rewrite Rule Set
  /// [keyVaultSecretId] The Secret ID of the (base-64 encoded unencrypted pfx) `Secret` or `Certificate` object stored in Azure KeyVault. You need to enable soft delete for the Key Vault to use this feature. Required if `data` is not set.
  /// [name] The Name of the Trusted Root Certificate to use.
  ApplicationGatewayTrustedRootCertificate({
    this.data,
    this.id,
    this.keyVaultSecretId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'id': ?id,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': name,
    };
  }

  factory ApplicationGatewayTrustedRootCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayTrustedRootCertificate(
      data: map['data'] == null ? null : (map['data']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

