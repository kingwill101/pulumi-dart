/// Namespace SKU name.
enum ZoneRedundancyPreference {
  disabled("Disabled"),
  enabled("Enabled");

  const ZoneRedundancyPreference(this.value);
  final String value;

  static ZoneRedundancyPreference fromValue(String value) {
    for (final item in ZoneRedundancyPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundancyPreference value: $value');
  }
}

