/// The current mode of the workspace manager configuration
enum Mode {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const Mode(this.value);
  final String value;

  static Mode fromValue(String value) {
    for (final item in Mode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Mode value: $value');
  }
}

