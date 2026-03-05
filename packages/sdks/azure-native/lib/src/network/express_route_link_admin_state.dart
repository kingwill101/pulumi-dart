/// Administrative state of the physical port.
enum ExpressRouteLinkAdminState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ExpressRouteLinkAdminState(this.wireValue);
  final String wireValue;

  static ExpressRouteLinkAdminState fromValue(String value) {
    for (final item in ExpressRouteLinkAdminState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkAdminState value: $value');
  }
}

