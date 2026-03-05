/// Required. The service tier of the instance.
enum InstanceTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  basic("BASIC"),
  standardHa("STANDARD_HA");

  const InstanceTier(this.wireValue);
  final String wireValue;

  static InstanceTier fromValue(String value) {
    for (final item in InstanceTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTier value: $value');
  }
}

