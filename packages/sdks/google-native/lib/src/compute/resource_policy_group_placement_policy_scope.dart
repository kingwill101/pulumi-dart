import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope specifies the availability domain to which the VMs should be spread.
enum ResourcePolicyGroupPlacementPolicyScope implements pulumi.PulumiEnum<String> {
  host("HOST"),
  unspecifiedScope("UNSPECIFIED_SCOPE");

  const ResourcePolicyGroupPlacementPolicyScope(this.wireValue);
  @override
  final String wireValue;

  static ResourcePolicyGroupPlacementPolicyScope fromValue(String value) {
    for (final item in ResourcePolicyGroupPlacementPolicyScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourcePolicyGroupPlacementPolicyScope value: $value');
  }
}
