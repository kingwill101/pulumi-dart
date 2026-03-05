/// type of the destination
enum EventSubscriptionDestinationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  endpoint("ENDPOINT");

  const EventSubscriptionDestinationType(this.wireValue);
  final String wireValue;

  static EventSubscriptionDestinationType fromValue(String value) {
    for (final item in EventSubscriptionDestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSubscriptionDestinationType value: $value');
  }
}

