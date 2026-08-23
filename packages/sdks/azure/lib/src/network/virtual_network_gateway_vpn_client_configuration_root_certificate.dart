// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayVpnClientConfigurationRootCertificate {
  /// A user-defined name of the root certificate.
  final pulumi.Input<String> name;
  /// The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument *must not* include the `-----BEGIN CERTIFICATE-----` or `-----END CERTIFICATE-----` markers, nor any newlines.
  final pulumi.Input<String> publicCertData;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationRootCertificate].
  /// [name] A user-defined name of the root certificate.
  /// [publicCertData] The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument *must not* include the `-----BEGIN CERTIFICATE-----` or `-----END CERTIFICATE-----` markers, nor any newlines.
  const VirtualNetworkGatewayVpnClientConfigurationRootCertificate({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      publicCertData: pulumi.Input.fromValue(map['publicCertData'] as String),
    );
  }
}
