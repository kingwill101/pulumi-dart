import 'package:pulumi/pulumi.dart' as pulumi;

/// The service tier of the instance.
enum InstanceTierFileV1beta1 implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  standard("STANDARD"),
  premium("PREMIUM"),
  basicHdd("BASIC_HDD"),
  basicSsd("BASIC_SSD"),
  highScaleSsd("HIGH_SCALE_SSD"),
  enterprise("ENTERPRISE"),
  zonal("ZONAL"),
  regional("REGIONAL");

  const InstanceTierFileV1beta1(this.wireValue);
  @override
  final String wireValue;

  static InstanceTierFileV1beta1 fromValue(String value) {
    for (final item in InstanceTierFileV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTierFileV1beta1 value: $value');
  }
}
