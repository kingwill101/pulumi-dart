/// Gateway SKU name.
enum VirtualNetworkGatewaySkuName {
  valueBasic("Basic"),
  valueHighPerformance("HighPerformance"),
  valueStandard("Standard"),
  valueUltraPerformance("UltraPerformance"),
  valueVpnGw1("VpnGw1"),
  valueVpnGw2("VpnGw2"),
  valueVpnGw3("VpnGw3"),
  valueVpnGw4("VpnGw4"),
  valueVpnGw5("VpnGw5"),
  valueVpnGw1AZ("VpnGw1AZ"),
  valueVpnGw2AZ("VpnGw2AZ"),
  valueVpnGw3AZ("VpnGw3AZ"),
  valueVpnGw4AZ("VpnGw4AZ"),
  valueVpnGw5AZ("VpnGw5AZ"),
  valueErGw1AZ("ErGw1AZ"),
  valueErGw2AZ("ErGw2AZ"),
  valueErGw3AZ("ErGw3AZ"),
  valueErGwScale("ErGwScale");

  const VirtualNetworkGatewaySkuName(this.wireValue);
  final String wireValue;

  static VirtualNetworkGatewaySkuName fromValue(String value) {
    for (final item in VirtualNetworkGatewaySkuName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkGatewaySkuName value: $value');
  }
}

