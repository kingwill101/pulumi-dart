import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies network collocation
enum ResourcePolicyGroupPlacementPolicyCollocation implements pulumi.PulumiEnum<String> {
  clustered("CLUSTERED"),
  collocated("COLLOCATED"),
  unspecifiedCollocation("UNSPECIFIED_COLLOCATION");

  const ResourcePolicyGroupPlacementPolicyCollocation(this.wireValue);
  @override
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
