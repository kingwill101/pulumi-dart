import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyTypeComputeBeta implements pulumi.PulumiEnum<String> {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ExternalVpnGatewayRedundancyTypeComputeBeta fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalVpnGatewayRedundancyTypeComputeBeta value: $value');
  }
}
