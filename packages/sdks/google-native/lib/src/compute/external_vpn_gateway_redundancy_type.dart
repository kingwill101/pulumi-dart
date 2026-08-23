/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyType {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyType(this.wireValue);
  final String wireValue;

  static ExternalVpnGatewayRedundancyType fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalVpnGatewayRedundancyType value: $value');
  }
}
