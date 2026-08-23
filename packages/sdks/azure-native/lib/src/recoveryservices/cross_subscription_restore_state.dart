enum CrossSubscriptionRestoreState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled"),
  valuePermanentlyDisabled("PermanentlyDisabled");

  const CrossSubscriptionRestoreState(this.wireValue);
  final String wireValue;

  static CrossSubscriptionRestoreState fromValue(String value) {
    for (final item in CrossSubscriptionRestoreState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossSubscriptionRestoreState value: $value');
  }
}
