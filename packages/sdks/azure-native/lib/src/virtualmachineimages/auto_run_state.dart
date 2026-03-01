/// Enabling this field will trigger an automatic build on image template creation or update.
enum AutoRunState {
  autoRunEnabled("Enabled"),
  autoRunDisabled("Disabled");

  const AutoRunState(this.value);
  final String value;

  static AutoRunState fromValue(String value) {
    for (final item in AutoRunState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoRunState value: $value');
  }
}

