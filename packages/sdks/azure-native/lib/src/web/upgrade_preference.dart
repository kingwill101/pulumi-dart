import 'package:pulumi/pulumi.dart' as pulumi;

/// Upgrade Preference
enum UpgradePreference implements pulumi.PulumiEnum<String> {
  none("None"),
  early("Early"),
  late("Late"),
  manual("Manual");

  const UpgradePreference(this.wireValue);
  @override
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
