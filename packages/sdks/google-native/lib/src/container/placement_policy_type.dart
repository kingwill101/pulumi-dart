/// The type of placement.
enum PlacementPolicyType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  compact("COMPACT");

  const PlacementPolicyType(this.wireValue);
  final String wireValue;

  static PlacementPolicyType fromValue(String value) {
    for (final item in PlacementPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementPolicyType value: $value');
  }
}
