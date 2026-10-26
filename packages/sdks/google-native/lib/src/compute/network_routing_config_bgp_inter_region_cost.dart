import 'package:pulumi/pulumi.dart' as pulumi;

/// Allows to define a preferred approach for handling inter-region cost in the selection process when using the STANDARD BGP best path selection algorithm. Can be DEFAULT or ADD_COST_TO_MED.
enum NetworkRoutingConfigBgpInterRegionCost implements pulumi.PulumiEnum<String> {
  addCostToMed("ADD_COST_TO_MED"),
  default_("DEFAULT");

  const NetworkRoutingConfigBgpInterRegionCost(this.wireValue);
  @override
  final String wireValue;

  static NetworkRoutingConfigBgpInterRegionCost fromValue(String value) {
    for (final item in NetworkRoutingConfigBgpInterRegionCost.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkRoutingConfigBgpInterRegionCost value: $value');
  }
}
