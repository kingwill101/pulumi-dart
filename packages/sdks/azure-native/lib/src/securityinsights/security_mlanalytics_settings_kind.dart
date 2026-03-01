/// The kind of security ML Analytics Settings
enum SecurityMLAnalyticsSettingsKind {
  valueAnomaly("Anomaly");

  const SecurityMLAnalyticsSettingsKind(this.value);
  final String value;

  static SecurityMLAnalyticsSettingsKind fromValue(String value) {
    for (final item in SecurityMLAnalyticsSettingsKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityMLAnalyticsSettingsKind value: $value');
  }
}

