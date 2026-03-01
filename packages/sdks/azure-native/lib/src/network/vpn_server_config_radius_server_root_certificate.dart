// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Radius Server root certificate of VpnServerConfiguration.
class VpnServerConfigRadiusServerRootCertificate {
  /// The certificate name.
  final String? name;
  /// The certificate public data.
  final String? publicCertData;

  /// Creates a new [VpnServerConfigRadiusServerRootCertificate].
  /// [name] The certificate name.
  /// [publicCertData] The certificate public data.
  VpnServerConfigRadiusServerRootCertificate({
    this.name,
    this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicCertData': ?publicCertData,
    };
  }

  factory VpnServerConfigRadiusServerRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigRadiusServerRootCertificate(
      name: map['name'] == null ? null : map['name'] as String,
      publicCertData: map['publicCertData'] == null ? null : map['publicCertData'] as String,
    );
  }
}

