// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GatewayCustomBgpIpAddressIpConfiguration for a virtual network gateway connection.
class GatewayCustomBgpIpAddressIpConfiguration {
  /// The custom BgpPeeringAddress which belongs to IpconfigurationId.
  final pulumi.Input<String> customBgpIpAddress;
  /// The IpconfigurationId of ipconfiguration which belongs to gateway.
  final pulumi.Input<String> ipConfigurationId;

  /// Creates a new [GatewayCustomBgpIpAddressIpConfiguration].
  /// [customBgpIpAddress] The custom BgpPeeringAddress which belongs to IpconfigurationId.
  /// [ipConfigurationId] The IpconfigurationId of ipconfiguration which belongs to gateway.
  GatewayCustomBgpIpAddressIpConfiguration({
    required this.customBgpIpAddress,
    required this.ipConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBgpIpAddress': customBgpIpAddress,
      'ipConfigurationId': ipConfigurationId,
    };
  }

  factory GatewayCustomBgpIpAddressIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GatewayCustomBgpIpAddressIpConfiguration(
      customBgpIpAddress: (map['customBgpIpAddress'] as String).input(),
      ipConfigurationId: (map['ipConfigurationId'] as String).input(),
    );
  }
}

