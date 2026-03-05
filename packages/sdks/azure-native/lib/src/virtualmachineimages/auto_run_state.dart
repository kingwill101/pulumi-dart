/// Enabling this field will trigger an automatic build on image template creation or update.
enum AutoRunState {
  autoRunEnabled("Enabled"),
  autoRunDisabled("Disabled");

  const AutoRunState(this.wireValue);
  final String wireValue;

  static AutoRunState fromValue(String value) {
    for (final item in AutoRunState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoRunState value: $value');
  }
}

