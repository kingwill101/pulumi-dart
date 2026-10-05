import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile specifies the set of SSL features that can be used by the load balancer when negotiating SSL with clients. This can be one of COMPATIBLE, MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to enable must be specified in the customFeatures field.
enum RegionSslPolicyProfileComputeV1 implements pulumi.PulumiEnum<String> {
  compatible("COMPATIBLE"),
  custom("CUSTOM"),
  modern("MODERN"),
  restricted("RESTRICTED");

  const RegionSslPolicyProfileComputeV1(this.wireValue);
  @override
  final String wireValue;

  static RegionSslPolicyProfileComputeV1 fromValue(String value) {
    for (final item in RegionSslPolicyProfileComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionSslPolicyProfileComputeV1 value: $value');
  }
}
