import 'package:pulumi/pulumi.dart' as pulumi;

/// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
enum NetworkRoutingConfigRoutingModeComputeV1 implements pulumi.PulumiEnum<String> {
  global("GLOBAL"),
  regional("REGIONAL");

  const NetworkRoutingConfigRoutingModeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NetworkRoutingConfigRoutingModeComputeV1 fromValue(String value) {
    for (final item in NetworkRoutingConfigRoutingModeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRoutingConfigRoutingModeComputeV1 value: $value');
  }
}
