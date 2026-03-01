/// The effect.
enum ResourceProviderCapabilitiesEffect {
  notSpecified("NotSpecified"),
  allow("Allow"),
  disallow("Disallow");

  const ResourceProviderCapabilitiesEffect(this.value);
  final String value;

  static ResourceProviderCapabilitiesEffect fromValue(String value) {
    for (final item in ResourceProviderCapabilitiesEffect.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProviderCapabilitiesEffect value: $value');
  }
}

