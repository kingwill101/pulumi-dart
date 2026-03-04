enum SoftDeleteState {
  valueInvalid("Invalid"),
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valueAlwaysON("AlwaysON");

  const SoftDeleteState(this.wireValue);
  final String wireValue;

  static SoftDeleteState fromValue(String value) {
    for (final item in SoftDeleteState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SoftDeleteState value: $value');
  }
}
