/// Auto-tracking configuration.
enum AutoTrackingConfiguration {
  valueDisabled("disabled"),
  valueXBand("xBand"),
  valueSBand("sBand");

  const AutoTrackingConfiguration(this.wireValue);
  final String wireValue;

  static AutoTrackingConfiguration fromValue(String value) {
    for (final item in AutoTrackingConfiguration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoTrackingConfiguration value: $value');
  }
}

