enum CrossSubscriptionRestoreState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valuePermanentlyDisabled("PermanentlyDisabled");

  const CrossSubscriptionRestoreState(this.value);
  final String value;

  static CrossSubscriptionRestoreState fromValue(String value) {
    for (final item in CrossSubscriptionRestoreState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossSubscriptionRestoreState value: $value');
  }
}

