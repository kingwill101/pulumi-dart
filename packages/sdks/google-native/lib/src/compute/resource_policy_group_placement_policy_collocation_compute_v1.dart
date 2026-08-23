/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocationComputeV1 {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocationComputeV1(this.wireValue);
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyCollocationComputeV1 fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocationComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyCollocationComputeV1 value: $value');
  }
}
