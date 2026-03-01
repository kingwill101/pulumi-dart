/// The anomaly SecurityMLAnalyticsSettings status
enum SettingsStatus {
  valueProduction("Production"),
  valueFlighting("Flighting");

  const SettingsStatus(this.value);
  final String value;

  static SettingsStatus fromValue(String value) {
    for (final item in SettingsStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsStatus value: $value');
  }
}

