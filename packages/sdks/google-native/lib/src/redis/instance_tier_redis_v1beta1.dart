import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The service tier of the instance.
enum InstanceTierRedisV1beta1 implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  basic("BASIC"),
  standardHa("STANDARD_HA");

  const InstanceTierRedisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static InstanceTierRedisV1beta1 fromValue(String value) {
    for (final item in InstanceTierRedisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTierRedisV1beta1 value: $value');
  }
}
