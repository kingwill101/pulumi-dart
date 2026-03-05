/// The tier of the service.
enum ServiceTierMetastoreV1alpha {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTierMetastoreV1alpha(this.wireValue);
  final String wireValue;

  static ServiceTierMetastoreV1alpha fromValue(String value) {
    for (final item in ServiceTierMetastoreV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTierMetastoreV1alpha value: $value');
  }
}

