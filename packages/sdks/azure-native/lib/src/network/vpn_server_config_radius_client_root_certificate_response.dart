// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the Radius client root certificate of VpnServerConfiguration.
class VpnServerConfigRadiusClientRootCertificateResponse {
  /// The certificate name.
  final String? name;
  /// The Radius client root certificate thumbprint.
  final String? thumbprint;

  /// Creates a new [VpnServerConfigRadiusClientRootCertificateResponse].
  /// [name] The certificate name.
  /// [thumbprint] The Radius client root certificate thumbprint.
  VpnServerConfigRadiusClientRootCertificateResponse({
    this.name,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'thumbprint': ?thumbprint,
    };
  }

  factory VpnServerConfigRadiusClientRootCertificateResponse.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigRadiusClientRootCertificateResponse(
      name: map['name'] == null ? null : map['name'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

