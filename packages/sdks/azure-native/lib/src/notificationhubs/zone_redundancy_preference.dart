/// Namespace SKU name.
enum ZoneRedundancyPreference {
  disabled("Disabled"),
  enabled("Enabled");

  const ZoneRedundancyPreference(this.wireValue);
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
