/// The tier of the service.
enum ServiceTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTier(this.wireValue);
  final String wireValue;

  static ServiceTier fromValue(String value) {
    for (final item in ServiceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTier value: $value');
  }
}

