// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The interface for the external VPN gateway.
class ExternalVpnGatewayInterfaceResponseComputeV1 {
  /// IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  final pulumi.Input<String> ipAddress;

  /// Creates a new [ExternalVpnGatewayInterfaceResponseComputeV1].
  /// [ipAddress] IP address of the interface in the external VPN gateway. Only IPv4 is supported. This IP address can be either from your on-premise gateway or another Cloud provider's VPN gateway, it cannot be an IP address from Google Compute Engine.
  ExternalVpnGatewayInterfaceResponseComputeV1({required this.ipAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipAddress': ipAddress};
  }

  factory ExternalVpnGatewayInterfaceResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExternalVpnGatewayInterfaceResponseComputeV1(
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
    );
  }
}
