/// AutoDiscovery states.
enum AutoDiscovery {
  valueDisabled("Disabled"),
  valueEnabled("Enabled"),
  valueNotApplicable("NotApplicable");

  const AutoDiscovery(this.value);
  final String value;

  static AutoDiscovery fromValue(String value) {
    for (final item in AutoDiscovery.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoDiscovery value: $value');
  }
}

