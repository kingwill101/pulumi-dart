/// The subscription state.
enum SubscriptionState {
  notDefined("NotDefined"),
  enabled("Enabled"),
  warned("Warned"),
  pastDue("PastDue"),
  disabled("Disabled"),
  deleted("Deleted");

  const SubscriptionState(this.wireValue);
  final String wireValue;

  static SubscriptionState fromValue(String value) {
    for (final item in SubscriptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubscriptionState value: $value');
  }
}

