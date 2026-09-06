import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the setting
enum SettingKind implements pulumi.PulumiEnum<String> {
  valueAnomalies("Anomalies"),
  valueEyesOn("EyesOn"),
  valueEntityAnalytics("EntityAnalytics"),
  valueUeba("Ueba");

  const SettingKind(this.wireValue);
  @override
  final String wireValue;

  static SettingKind fromValue(String value) {
    for (final item in SettingKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingKind value: $value');
  }
}
