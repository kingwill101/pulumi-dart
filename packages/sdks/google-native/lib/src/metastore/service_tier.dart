import 'package:pulumi/pulumi.dart' as pulumi;

/// The tier of the service.
enum ServiceTier implements pulumi.PulumiEnum<String> {
  tierUnspecified("TIER_UNSPECIFIED"),
  developer("DEVELOPER"),
  enterprise("ENTERPRISE");

  const ServiceTier(this.wireValue);
  @override
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
