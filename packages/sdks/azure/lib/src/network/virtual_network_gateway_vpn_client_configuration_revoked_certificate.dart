// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate {
  /// Specifies the name of the certificate resource.
  final pulumi.Input<String> name;
  /// Specifies the public data of the certificate.
  final pulumi.Input<String> thumbprint;

  /// Creates a new [VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate].
  /// [name] Specifies the name of the certificate resource.
  /// [thumbprint] Specifies the public data of the certificate.
  VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayVpnClientConfigurationRevokedCertificate(
      name: pulumi.Input.fromValue(map['name'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}

