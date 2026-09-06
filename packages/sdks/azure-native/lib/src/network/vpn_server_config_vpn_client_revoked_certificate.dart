// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the revoked VPN client certificate of VpnServerConfiguration.
class VpnServerConfigVpnClientRevokedCertificate {
  /// The certificate name.
  final pulumi.Input<String?>? name;
  /// The revoked VPN client certificate thumbprint.
  final pulumi.Input<String?>? thumbprint;

  /// Creates a new [VpnServerConfigVpnClientRevokedCertificate].
  /// [name] The certificate name.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  const VpnServerConfigVpnClientRevokedCertificate({
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory VpnServerConfigVpnClientRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigVpnClientRevokedCertificate(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
