/// The type of placement.
enum PlacementPolicyTypeContainerV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  compact("COMPACT");

  const PlacementPolicyTypeContainerV1beta1(this.wireValue);
  final String wireValue;

  static PlacementPolicyTypeContainerV1beta1 fromValue(String value) {
    for (final item in PlacementPolicyTypeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PlacementPolicyTypeContainerV1beta1 value: $value',
    );
  }
}
