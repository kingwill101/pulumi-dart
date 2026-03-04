/// Specifies network locality
enum ResourcePolicyGroupPlacementPolicyLocality {
  bestEffort("BEST_EFFORT"),
  strict("STRICT"),
  unspecifiedLocality("UNSPECIFIED_LOCALITY");

  const ResourcePolicyGroupPlacementPolicyLocality(this.wireValue);
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyLocality fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyLocality.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourcePolicyGroupPlacementPolicyLocality value: $value',
    );
  }
}
