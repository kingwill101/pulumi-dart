import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the user-supplied redundancy type of this external VPN gateway.
enum ExternalVpnGatewayRedundancyTypeComputeV1 implements pulumi.PulumiEnum<String> {
  fourIpsRedundancy("FOUR_IPS_REDUNDANCY"),
  singleIpInternallyRedundant("SINGLE_IP_INTERNALLY_REDUNDANT"),
  twoIpsRedundancy("TWO_IPS_REDUNDANCY");

  const ExternalVpnGatewayRedundancyTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ExternalVpnGatewayRedundancyTypeComputeV1 fromValue(String value) {
    for (final item in ExternalVpnGatewayRedundancyTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExternalVpnGatewayRedundancyTypeComputeV1 value: $value');
  }
}
