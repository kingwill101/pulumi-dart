import 'package:pulumi/pulumi.dart' as pulumi;

/// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
enum VpnGatewayGeneration implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueGeneration1("Generation1"),
  valueGeneration2("Generation2");

  const VpnGatewayGeneration(this.wireValue);
  @override
  final String wireValue;

  static VpnGatewayGeneration fromValue(String value) {
    for (final item in VpnGatewayGeneration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnGatewayGeneration value: $value');
  }
}
