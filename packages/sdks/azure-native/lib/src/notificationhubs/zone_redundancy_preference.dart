import 'package:pulumi/pulumi.dart' as pulumi;

/// Namespace SKU name.
enum ZoneRedundancyPreference implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const ZoneRedundancyPreference(this.wireValue);
  @override
  final String wireValue;

  static ZoneRedundancyPreference fromValue(String value) {
    for (final item in ZoneRedundancyPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundancyPreference value: $value');
  }
}
