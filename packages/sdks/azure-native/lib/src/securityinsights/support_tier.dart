/// Type of support for content item
enum SupportTier {
  valueMicrosoft("Microsoft"),
  valuePartner("Partner"),
  valueCommunity("Community");

  const SupportTier(this.value);
  final String value;

  static SupportTier fromValue(String value) {
    for (final item in SupportTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportTier value: $value');
  }
}

