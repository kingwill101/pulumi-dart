import 'package:pulumi/pulumi.dart' as pulumi;

/// The service tier of the instance.
enum InstanceTier implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  standard("STANDARD"),
  premium("PREMIUM"),
  basicHdd("BASIC_HDD"),
  basicSsd("BASIC_SSD"),
  highScaleSsd("HIGH_SCALE_SSD"),
  enterprise("ENTERPRISE"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const InstanceTier(this.wireValue);
  @override
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
