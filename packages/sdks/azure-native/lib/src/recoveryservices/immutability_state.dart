enum ImmutabilityState {
  valueDisabled("Disabled"),
  valueUnlocked("Unlocked"),
  valueLocked("Locked");

  const ImmutabilityState(this.value);
  final String value;

  static ImmutabilityState fromValue(String value) {
    for (final item in ImmutabilityState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImmutabilityState value: $value');
  }
}

