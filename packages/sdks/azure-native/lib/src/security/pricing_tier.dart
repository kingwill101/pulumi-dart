import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
enum PricingTier implements pulumi.PulumiEnum<String> {
  free("Free"),
  standard("Standard");

  const PricingTier(this.wireValue);
  @override
  final String wireValue;

  static PricingTier fromValue(String value) {
    for (final item in PricingTier.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PricingTier value: $value');
  }
}
