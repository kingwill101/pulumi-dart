// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewaySslCertificate {
  /// The base64-encoded PFX certificate data. Required if `key_vault_secret_id` is not set.
  ///
  /// > **Note:** When specifying a file, use `data = filebase64("path/to/file")` to encode the contents of that file.
  final pulumi.Input<String>? data;
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The Secret ID of the (base-64 encoded unencrypted pfx) `Secret` or `Certificate` object stored in Azure KeyVault. You need to enable soft delete for Key Vault to use this feature. Required if `data` is not set.
  ///
  /// > **Note:** To implement certificate rotation, the `azure.keyvault.Secret` attribute `versionless_id` should be used, although `id` is also supported.
  ///
  /// > **Note:** TLS termination with Key Vault certificates is limited to the [v2 SKUs](https://docs.microsoft.com/azure/application-gateway/key-vault-certs).
  ///
  /// > **Note:** For TLS termination with Key Vault certificates to work properly, an existing user-assigned managed identity, which Application Gateway uses to retrieve certificates from Key Vault, should be defined via `identity` block. Additionally, access policies in the Key Vault to allow the identity to be granted *get* access to the secret should be defined.
  final pulumi.Input<String>? keyVaultSecretId;
  /// The Name of the SSL certificate that is unique within this Application Gateway
  final pulumi.Input<String> name;
  /// Password for the pfx file specified in data. Required if `data` is set.
  final pulumi.Input<String>? password;
  /// The Public Certificate Data associated with the SSL Certificate.
  final pulumi.Input<String>? publicCertData;

  /// Creates a new [ApplicationGatewaySslCertificate].
  /// [data] The base64-encoded PFX certificate data. Required if `key_vault_secret_id` is not set.
  /// [id] The ID of the Rewrite Rule Set
  /// [keyVaultSecretId] The Secret ID of the (base-64 encoded unencrypted pfx) `Secret` or `Certificate` object stored in Azure KeyVault. You need to enable soft delete for Key Vault to use this feature. Required if `data` is not set.
  /// [name] The Name of the SSL certificate that is unique within this Application Gateway
  /// [password] Password for the pfx file specified in data. Required if `data` is set.
  /// [publicCertData] The Public Certificate Data associated with the SSL Certificate.
  ApplicationGatewaySslCertificate({
    this.data,
    this.id,
    this.keyVaultSecretId,
    required this.name,
    this.password,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'id': ?id,
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': name,
      'password': ?password,
      'publicCertData': ?publicCertData,
    };
  }

  factory ApplicationGatewaySslCertificate.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewaySslCertificate(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      keyVaultSecretId: map['keyVaultSecretId'] == null ? null : (map['keyVaultSecretId'] as String).input(),
      name: (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      publicCertData: map['publicCertData'] == null ? null : (map['publicCertData'] as String).input(),
    );
  }
}

