import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of security ML Analytics Settings
enum SecurityMLAnalyticsSettingsKind implements pulumi.PulumiEnum<String> {
  valueAnomaly("Anomaly");

  const SecurityMLAnalyticsSettingsKind(this.wireValue);
  @override
  final String wireValue;

  static SecurityMLAnalyticsSettingsKind fromValue(String value) {
    for (final item in SecurityMLAnalyticsSettingsKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityMLAnalyticsSettingsKind value: $value');
  }
}
