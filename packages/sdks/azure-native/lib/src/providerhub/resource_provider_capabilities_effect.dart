/// The effect.
enum ResourceProviderCapabilitiesEffect {
  notSpecified("NotSpecified"),
  allow("Allow"),
  disallow("Disallow");

  const ResourceProviderCapabilitiesEffect(this.wireValue);
  final String wireValue;

  static ResourceProviderCapabilitiesEffect fromValue(String value) {
    for (final item in ResourceProviderCapabilitiesEffect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourceProviderCapabilitiesEffect value: $value',
    );
  }
}
