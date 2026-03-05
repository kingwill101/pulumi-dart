/// Specifies instances to hosts placement relationship
enum ResourcePolicyGroupPlacementPolicyStyle {
  compact("COMPACT"),
  fullySpread("FULLY_SPREAD"),
  unspecifiedPlacementType("UNSPECIFIED_PLACEMENT_TYPE");

  const ResourcePolicyGroupPlacementPolicyStyle(this.wireValue);
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyStyle fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyStyle.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyStyle value: $value');
  }
}

