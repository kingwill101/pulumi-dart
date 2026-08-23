// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GatewayCustomBgpIpAddressIpConfiguration for a virtual network gateway connection.
class GatewayCustomBgpIpAddressIpConfigurationResponse {
  /// The custom BgpPeeringAddress which belongs to IpconfigurationId.
  final pulumi.Input<String> customBgpIpAddress;
  /// The IpconfigurationId of ipconfiguration which belongs to gateway.
  final pulumi.Input<String> ipConfigurationId;

  /// Creates a new [GatewayCustomBgpIpAddressIpConfigurationResponse].
  /// [customBgpIpAddress] The custom BgpPeeringAddress which belongs to IpconfigurationId.
  /// [ipConfigurationId] The IpconfigurationId of ipconfiguration which belongs to gateway.
  const GatewayCustomBgpIpAddressIpConfigurationResponse({
    required this.customBgpIpAddress,
    required this.ipConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBgpIpAddress': customBgpIpAddress,
      'ipConfigurationId': ipConfigurationId,
    };
  }

  factory GatewayCustomBgpIpAddressIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GatewayCustomBgpIpAddressIpConfigurationResponse(
      customBgpIpAddress: pulumi.Input.fromValue(map['customBgpIpAddress'] as String),
      ipConfigurationId: pulumi.Input.fromValue(map['ipConfigurationId'] as String),
    );
  }
}
