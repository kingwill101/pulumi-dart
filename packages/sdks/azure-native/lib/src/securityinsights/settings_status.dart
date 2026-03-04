/// The anomaly SecurityMLAnalyticsSettings status
enum SettingsStatus {
  valueProduction("Production"),
  valueFlighting("Flighting");

  const SettingsStatus(this.wireValue);
  final String wireValue;

  static SettingsStatus fromValue(String value) {
    for (final item in SettingsStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsStatus value: $value');
  }
}
