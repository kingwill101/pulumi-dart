import 'package:pulumi/pulumi.dart' as pulumi;

/// The network tier to use when automatically reserving NAT IP addresses. Must be one of: PREMIUM, STANDARD. If not specified, then the current project-level default tier is used.
enum RouterNatAutoNetworkTier implements pulumi.PulumiEnum<String> {
  fixedStandard("FIXED_STANDARD"),
  premium("PREMIUM"),
  select("SELECT"),
  standard("STANDARD"),
  standardOverridesFixedStandard("STANDARD_OVERRIDES_FIXED_STANDARD");

  const RouterNatAutoNetworkTier(this.wireValue);
  @override
  final String wireValue;

  static RouterNatAutoNetworkTier fromValue(String value) {
    for (final item in RouterNatAutoNetworkTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouterNatAutoNetworkTier value: $value');
  }
}
