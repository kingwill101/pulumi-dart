import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies instances to hosts placement relationship
enum ResourcePolicyGroupPlacementPolicyStyle implements pulumi.PulumiEnum<String> {
  compact("COMPACT"),
  fullySpread("FULLY_SPREAD"),
  unspecifiedPlacementType("UNSPECIFIED_PLACEMENT_TYPE");

  const ResourcePolicyGroupPlacementPolicyStyle(this.wireValue);
  @override
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
