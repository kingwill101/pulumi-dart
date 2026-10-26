import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the service.
enum ServiceTierMetastoreV1beta implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTierMetastoreV1beta(this.wireValue);
  @override
  final String wireValue;

  static ServiceTierMetastoreV1beta fromValue(String value) {
    for (final item in ServiceTierMetastoreV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceTierMetastoreV1beta value: $value');
  }
}
