import 'package:pulumi/pulumi.dart' as pulumi;

/// The network-wide routing mode to use. If set to REGIONAL, this network's Cloud Routers will only advertise routes with subnets of this network in the same region as the router. If set to GLOBAL, this network's Cloud Routers will advertise routes with all subnets of this network, across regions.
enum NetworkRoutingConfigRoutingModeComputeBeta implements pulumi.PulumiEnum<String> {
  global("GLOBAL"),
  regional("REGIONAL");

  const NetworkRoutingConfigRoutingModeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static NetworkRoutingConfigRoutingModeComputeBeta fromValue(String value) {
    for (final item in NetworkRoutingConfigRoutingModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRoutingConfigRoutingModeComputeBeta value: $value');
  }
}
