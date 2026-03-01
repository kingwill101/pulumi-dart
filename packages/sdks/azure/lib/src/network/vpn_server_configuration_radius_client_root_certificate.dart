// ignore_for_file: unused_element, unnecessary_cast


class VpnServerConfigurationRadiusClientRootCertificate {
  /// A name used to uniquely identify this certificate.
  final String name;
  /// The Thumbprint of the Certificate.
  final String thumbprint;

  /// Creates a new [VpnServerConfigurationRadiusClientRootCertificate].
  /// [name] A name used to uniquely identify this certificate.
  /// [thumbprint] The Thumbprint of the Certificate.
  VpnServerConfigurationRadiusClientRootCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory VpnServerConfigurationRadiusClientRootCertificate.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationRadiusClientRootCertificate(
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

