/// Upgrade Preference
enum UpgradePreference {
  valueNone("None"),
  valueEarly("Early"),
  valueLate("Late"),
  valueManual("Manual");

  const UpgradePreference(this.wireValue);
  final String wireValue;

  static UpgradePreference fromValue(String value) {
    for (final item in UpgradePreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradePreference value: $value');
  }
}

