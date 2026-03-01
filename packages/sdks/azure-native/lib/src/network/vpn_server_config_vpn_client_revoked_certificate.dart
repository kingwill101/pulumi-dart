// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the revoked VPN client certificate of VpnServerConfiguration.
class VpnServerConfigVpnClientRevokedCertificate {
  /// The certificate name.
  final String? name;
  /// The revoked VPN client certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [VpnServerConfigVpnClientRevokedCertificate].
  /// [name] The certificate name.
  /// [thumbprint] The revoked VPN client certificate thumbprint.
  VpnServerConfigVpnClientRevokedCertificate({
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
      name: map['name'] == null ? null : map['name'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

