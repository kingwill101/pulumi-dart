/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocation {
  clustered("CLUSTERED"),
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocation(this.wireValue);
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyCollocation fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyCollocation value: $value');
  }
}
