// ignore_for_file: unused_element, unnecessary_cast


class GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate {
  /// Specifies the name of the Virtual Network Gateway.
  final String name;
  final String thumbprint;

  /// Creates a new [GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate].
  /// [name] Specifies the name of the Virtual Network Gateway.
  /// [thumbprint] Required.
  GetVirtualNetworkGatewayVpnClientConfigurationRevokedCertificate({
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
      name: map['name'] as String,
      thumbprint: map['thumbprint'] as String,
    );
  }
}

