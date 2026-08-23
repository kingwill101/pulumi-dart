/// Required. Immutable. The Tier of this CaPool.
enum CaPoolTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  enterprise("ENTERPRISE"),
  devops("DEVOPS");

  const CaPoolTier(this.wireValue);
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
