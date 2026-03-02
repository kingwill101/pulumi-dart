// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewaySslCertificate {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The Secret ID of (base-64 encoded unencrypted pfx) the `Secret` or `Certificate` object stored in Azure KeyVault.
  final pulumi.Input<String> keyVaultSecretId;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The Public Certificate Data associated with the SSL Certificate.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [GetApplicationGatewaySslCertificate].
  /// [id] The ID of the Rewrite Rule Set
  /// [keyVaultSecretId] The Secret ID of (base-64 encoded unencrypted pfx) the `Secret` or `Certificate` object stored in Azure KeyVault.
  /// [name] The name of this Application Gateway.
  /// [publicCertData] The Public Certificate Data associated with the SSL Certificate.
  GetApplicationGatewaySslCertificate({
    required this.id,
    required this.keyVaultSecretId,
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyVaultSecretId': keyVaultSecretId,
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory GetApplicationGatewaySslCertificate.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewaySslCertificate(
      id: (map['id'] as String).input(),
      keyVaultSecretId: (map['keyVaultSecretId'] as String).input(),
      name: (map['name'] as String).input(),
      publicCertData: (map['publicCertData'] as String).input(),
    );
  }
}

