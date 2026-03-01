enum SoftDeleteState {
  valueInvalid("Invalid"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueAlwaysON("AlwaysON");

  const SoftDeleteState(this.value);
  final String value;

  static SoftDeleteState fromValue(String value) {
    for (final item in SoftDeleteState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftDeleteState value: $value');
  }
}

