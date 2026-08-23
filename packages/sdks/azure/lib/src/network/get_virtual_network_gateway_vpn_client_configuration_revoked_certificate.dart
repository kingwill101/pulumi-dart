// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate {
  /// Specifies the name of the Virtual Network Gateway.
  final pulumi.Input<String> name;
  final pulumi.Input<String> thumbprint;

  /// Creates a new [GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate].
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [thumbprint] Required.
  const GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate({
    required this.name,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'thumbprint': thumbprint,
    };
  }

  factory GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate(
      name: pulumi.Input.fromValue(map['name'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
    );
  }
}
