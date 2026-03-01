// ignore_for_file: unused_element, unnecessary_cast


/// GatewayCustomBgpIpAddressIpConfiguration for a virtual network gateway connection.
class GatewayCustomBgpIpAddressIpConfigurationResponse {
  /// The custom BgpPeeringAddress which belongs to IpconfigurationId.
  final String customBgpIpAddress;
  /// The IpconfigurationId of ipconfiguration which belongs to gateway.
  final String ipConfigurationId;

  /// Creates a new [GatewayCustomBgpIpAddressIpConfigurationResponse].
  /// [customBgpIpAddress] The custom BgpPeeringAddress which belongs to IpconfigurationId.
  /// [ipConfigurationId] The IpconfigurationId of ipconfiguration which belongs to gateway.
  GatewayCustomBgpIpAddressIpConfigurationResponse({
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
      customBgpIpAddress: map['customBgpIpAddress'] as String,
      ipConfigurationId: map['ipConfigurationId'] as String,
    );
  }
}

