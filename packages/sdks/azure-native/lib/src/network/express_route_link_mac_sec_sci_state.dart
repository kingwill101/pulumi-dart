/// Sci mode enabled/disabled.
enum ExpressRouteLinkMacSecSciState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ExpressRouteLinkMacSecSciState(this.wireValue);
  final String wireValue;

  static ExpressRouteLinkMacSecSciState fromValue(String value) {
    for (final item in ExpressRouteLinkMacSecSciState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressRouteLinkMacSecSciState value: $value');
  }
}

