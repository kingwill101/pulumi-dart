import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies network locality
enum ResourcePolicyGroupPlacementPolicyLocality implements pulumi.PulumiEnum<String> {
  bestEffort("BEST_EFFORT"),
  strict("STRICT"),
  unspecifiedLocality("UNSPECIFIED_LOCALITY");

  const ResourcePolicyGroupPlacementPolicyLocality(this.wireValue);
  @override
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyLocality fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyLocality.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyLocality value: $value');
  }
}
