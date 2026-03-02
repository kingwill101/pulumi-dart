// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the revoked VPN client certificate of VpnServerConfiguration.
class VpnServerConfigVpnClientRevokedCertificateResponse {
  /// The certificate name.
  final pulumi.Input<String>? name;
  /// The revoked VPN client certificate thumbprint.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [VpnServerConfigVpnClientRevokedCertificateResponse].
  /// [name] The certificate name.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  VpnServerConfigVpnClientRevokedCertificateResponse({
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory VpnServerConfigVpnClientRevokedCertificateResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigVpnClientRevokedCertificateResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      thumbprint: map['thumbprint'] == null ? null : (map['thumbprint'] as String).input(),
    );
  }
}

