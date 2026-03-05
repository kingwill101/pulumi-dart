/// Database seeding mode – can be Automatic (default), or Manual for supported scenarios.
enum SeedingModeType {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const SeedingModeType(this.wireValue);
  final String wireValue;

  static SeedingModeType fromValue(String value) {
    for (final item in SeedingModeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeedingModeType value: $value');
  }
}

