/// The event hub type.
enum EventHubType {
  notification("Notification"),
  hook("Hook");

  const EventHubType(this.wireValue);
  final String wireValue;

  static EventHubType fromValue(String value) {
    for (final item in EventHubType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventHubType value: $value');
  }
}
