/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocationComputeBeta {
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocationComputeBeta(this.wireValue);
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyCollocationComputeBeta fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyCollocationComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyCollocationComputeBeta value: $value');
  }
}
