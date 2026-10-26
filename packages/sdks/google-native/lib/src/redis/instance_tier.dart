import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The service tier of the instance.
enum InstanceTier implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  basic("BASIC"),
  standardHa("STANDARD_HA");

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
