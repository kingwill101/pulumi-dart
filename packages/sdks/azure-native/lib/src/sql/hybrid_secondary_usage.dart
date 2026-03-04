/// Hybrid secondary usage. Possible values are 'Active' (default value) and 'Passive' (customer uses the secondary as Passive DR).
enum HybridSecondaryUsage {
  valueActive("Active"),
  valuePassive("Passive");

  const HybridSecondaryUsage(this.wireValue);
  final String wireValue;

  static HybridSecondaryUsage fromValue(String value) {
    for (final item in HybridSecondaryUsage.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HybridSecondaryUsage value: $value');
  }
}
