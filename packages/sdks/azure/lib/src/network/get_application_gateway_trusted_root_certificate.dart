// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayTrustedRootCertificate {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The Secret ID of (base-64 encoded unencrypted pfx) the `Secret` or `Certificate` object stored in Azure KeyVault.
  final pulumi.Input<String> keyVaultSecretId;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;

  /// Creates a new [GetApplicationGatewayTrustedRootCertificate].
  /// [id] The ID of the Rewrite Rule Set
  /// [keyVaultSecretId] The Secret ID of (base-64 encoded unencrypted pfx) the `Secret` or `Certificate` object stored in Azure KeyVault.
  /// [name] The name of this Application Gateway.
  const GetApplicationGatewayTrustedRootCertificate({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      keyVaultSecretId: pulumi.Input.fromValue(map['keyVaultSecretId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

