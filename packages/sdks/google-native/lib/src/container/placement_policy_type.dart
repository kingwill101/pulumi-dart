import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of placement.
enum PlacementPolicyType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  compact("COMPACT");

  const PlacementPolicyType(this.wireValue);
  @override
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
