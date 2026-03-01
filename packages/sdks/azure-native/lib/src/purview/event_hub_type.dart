/// The event hub type.
enum EventHubType {
  valueNotification("Notification"),
  valueHook("Hook");

  const EventHubType(this.value);
  final String value;

  static EventHubType fromValue(String value) {
    for (final item in EventHubType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventHubType value: $value');
  }
}

