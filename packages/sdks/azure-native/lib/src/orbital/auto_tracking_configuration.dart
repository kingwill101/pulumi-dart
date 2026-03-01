/// Auto-tracking configuration.
enum AutoTrackingConfiguration {
  valueDisabled("disabled"),
  valueXBand("xBand"),
  valueSBand("sBand");

  const AutoTrackingConfiguration(this.value);
  final String value;

  static AutoTrackingConfiguration fromValue(String value) {
    for (final item in AutoTrackingConfiguration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoTrackingConfiguration value: $value');
  }
}

