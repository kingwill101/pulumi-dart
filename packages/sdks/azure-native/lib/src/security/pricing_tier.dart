/// Indicates whether the Defender plan is enabled on the selected scope. Microsoft Defender for Cloud is provided in two pricing tiers: free and standard. The standard tier offers advanced security capabilities, while the free tier offers basic security features.
enum PricingTier {
  valueFree("Free"),
  valueStandard("Standard");

  const PricingTier(this.wireValue);
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

