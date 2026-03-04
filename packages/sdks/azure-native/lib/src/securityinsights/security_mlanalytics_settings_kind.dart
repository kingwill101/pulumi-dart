/// The kind of security ML Analytics Settings
enum SecurityMLAnalyticsSettingsKind {
  valueAnomaly("Anomaly");

  const SecurityMLAnalyticsSettingsKind(this.wireValue);
  final String wireValue;

  static SecurityMLAnalyticsSettingsKind fromValue(String value) {
    for (final item in SecurityMLAnalyticsSettingsKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityMLAnalyticsSettingsKind value: $value',
    );
  }
}
