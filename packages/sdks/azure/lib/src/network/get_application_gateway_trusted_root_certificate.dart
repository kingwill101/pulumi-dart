// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGatewayTrustedRootCertificate {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The Secret ID of (base-64 encoded unencrypted pfx) the `Secret` or `Certificate` object stored in Azure KeyVault.
  final String keyVaultSecretId;
  /// The name of this Application Gateway.
  final String name;

  /// Creates a new [GetApplicationGatewayTrustedRootCertificate].
  /// [id] The ID of the Rewrite Rule Set
  /// [keyVaultSecretId] The Secret ID of (base-64 encoded unencrypted pfx) the `Secret` or `Certificate` object stored in Azure KeyVault.
  /// [name] The name of this Application Gateway.
  GetApplicationGatewayTrustedRootCertificate({
    required this.id,
    required this.keyVaultSecretId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyVaultSecretId': keyVaultSecretId,
      'name': name,
    };
  }

  factory GetApplicationGatewayTrustedRootCertificate.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayTrustedRootCertificate(
      id: map['id'] as String,
      keyVaultSecretId: map['keyVaultSecretId'] as String,
      name: map['name'] as String,
    );
  }
}

