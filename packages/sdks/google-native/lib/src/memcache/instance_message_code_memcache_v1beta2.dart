import 'package:pulumi/pulumi.dart' as pulumi;

/// A code that correspond to one type of user-facing message.
enum InstanceMessageCodeMemcacheV1beta2 implements pulumi.PulumiEnum<String> {
  codeUnspecified("CODE_UNSPECIFIED"),
  zoneDistributionUnbalanced("ZONE_DISTRIBUTION_UNBALANCED");

  const InstanceMessageCodeMemcacheV1beta2(this.wireValue);
  @override
  final String wireValue;

  static InstanceMessageCodeMemcacheV1beta2 fromValue(String value) {
    for (final item in InstanceMessageCodeMemcacheV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMessageCodeMemcacheV1beta2 value: $value');
  }
}
