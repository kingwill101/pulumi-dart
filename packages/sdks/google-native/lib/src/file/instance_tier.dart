/// The service tier of the instance.
enum InstanceTier {
  tierUnspecified("TIER_UNSPECIFIED"),
  standard("STANDARD"),
  premium("PREMIUM"),
  basicHdd("BASIC_HDD"),
  basicSsd("BASIC_SSD"),
  highScaleSsd("HIGH_SCALE_SSD"),
  enterprise("ENTERPRISE"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const InstanceTier(this.value);
  final String value;

  static InstanceTier fromValue(String value) {
    for (final item in InstanceTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTier value: $value');
  }
}

