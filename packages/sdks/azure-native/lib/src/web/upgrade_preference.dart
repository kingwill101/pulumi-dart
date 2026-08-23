/// Upgrade Preference
enum UpgradePreference {
  none("None"),
  early("Early"),
  late("Late"),
  manual("Manual");

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
