// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trusted Root certificates properties for tls.
class FirewallPolicyCertificateAuthorityResponse {
  /// Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  final pulumi.Input<String>? keyVaultSecretId;

  /// Name of the CA certificate.
  final pulumi.Input<String>? name;

  /// Creates a new [FirewallPolicyCertificateAuthorityResponse].
  /// [keyVaultSecretId] Secret Id of (base-64 encoded unencrypted pfx) 'Secret' or 'Certificate' object stored in KeyVault.
  /// [name] Name of the CA certificate.
  FirewallPolicyCertificateAuthorityResponse({
    this.keyVaultSecretId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultSecretId': ?keyVaultSecretId,
      'name': ?name,
    };
  }

  factory FirewallPolicyCertificateAuthorityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyCertificateAuthorityResponse(
      keyVaultSecretId: (() {
        final guardedValue = map['keyVaultSecretId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
