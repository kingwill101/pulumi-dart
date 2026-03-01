// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Radius Server root certificate of VpnServerConfiguration.
class VpnServerConfigRadiusServerRootCertificateResponse {
  /// The certificate name.
  final String? name;
  /// The certificate public data.
  final String? publicCertData;

  /// Creates a new [VpnServerConfigRadiusServerRootCertificateResponse].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  VpnServerConfigRadiusServerRootCertificateResponse({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicCertData': ?publicCertData,
    };
  }

  factory VpnServerConfigRadiusServerRootCertificateResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigRadiusServerRootCertificateResponse(
      name: map['name'] == null ? null : map['name'] as String,
      publicCertData: map['publicCertData'] == null ? null : map['publicCertData'] as String,
    );
  }
}

