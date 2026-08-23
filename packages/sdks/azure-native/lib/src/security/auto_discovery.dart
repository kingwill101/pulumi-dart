/// AutoDiscovery states.
enum AutoDiscovery {
  valueDisabled("Disabled"),
  valueEnabled("Enabled"),
  valueNotApplicable("NotApplicable");

  const AutoDiscovery(this.wireValue);
  final String wireValue;

  static AutoDiscovery fromValue(String value) {
    for (final item in AutoDiscovery.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoDiscovery value: $value');
  }
}
