// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyTlsCertificate {
  /// The Secret Identifier (URI) of the certificate stored in Azure Key Vault, either as a secret or certificate.
  final pulumi.Input<String> keyVaultSecretId;
  /// The name of the certificate.
  final pulumi.Input<String> name;

  /// Creates a new [FirewallPolicyTlsCertificate].
  /// [keyVaultSecretId] The Secret Identifier (URI) of the certificate stored in Azure Key Vault, either as a secret or certificate.
  /// [name] The name of the certificate.
  FirewallPolicyTlsCertificate({
    required this.keyVaultSecretId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultSecretId': keyVaultSecretId,
      'name': name,
    };
  }

  factory FirewallPolicyTlsCertificate.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyTlsCertificate(
      keyVaultSecretId: (map['keyVaultSecretId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

