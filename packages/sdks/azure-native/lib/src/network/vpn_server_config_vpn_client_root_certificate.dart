// ignore_for_file: unused_element, unnecessary_cast


/// Properties of VPN client root certificate of VpnServerConfiguration.
class VpnServerConfigVpnClientRootCertificate {
  /// The certificate name.
  final String? name;
  /// The certificate public data.
  final String? publicCertData;

  /// Creates a new [VpnServerConfigVpnClientRootCertificate].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  VpnServerConfigVpnClientRootCertificate({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicCertData': ?publicCertData,
    };
  }

  factory VpnServerConfigVpnClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigVpnClientRootCertificate(
      name: map['name'] == null ? null : map['name'] as String,
      publicCertData: map['publicCertData'] == null ? null : map['publicCertData'] as String,
    );
  }
}

