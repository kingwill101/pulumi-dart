// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayVpnClientConfigurationRootCertificate {
  /// A user-defined name of the root certificate.
  final String name;
  /// The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument *must not* include the `-----BEGIN CERTIFICATE-----` or `-----END CERTIFICATE-----` markers, nor any newlines.
  final String publicCertData;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationRootCertificate].
  /// [name] A user-defined name of the root certificate.
  /// [publicCertData] The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument *must not* include the `-----BEGIN CERTIFICATE-----` or `-----END CERTIFICATE-----` markers, nor any newlines.
  VirtualNetworkGatewayVpnClientConfigurationRootCertificate({
    required this.name,
    required this.publicCertData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicCertData': publicCertData,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationRootCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationRootCertificate(
      name: map['name'] as String,
      publicCertData: map['publicCertData'] as String,
    );
  }
}

