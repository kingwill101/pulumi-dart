import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Immutable. The Tier of this CaPool.
enum CaPoolTier implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  devops("DEVOPS");

  const CaPoolTier(this.wireValue);
  @override
  final String wireValue;

  static CaPoolTier fromValue(String value) {
    for (final item in CaPoolTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CaPoolTier value: $value');
  }
}
