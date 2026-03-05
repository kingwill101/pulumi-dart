/// If FIPS validated crypto modules are used
enum FipsValidatedModules {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const FipsValidatedModules(this.wireValue);
  final String wireValue;

  static FipsValidatedModules fromValue(String value) {
    for (final item in FipsValidatedModules.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FipsValidatedModules value: $value');
  }
}

