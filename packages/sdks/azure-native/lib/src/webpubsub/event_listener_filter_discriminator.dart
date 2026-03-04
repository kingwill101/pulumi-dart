enum EventListenerFilterDiscriminator {
  valueEventName("EventName");

  const EventListenerFilterDiscriminator(this.wireValue);
  final String wireValue;

  static EventListenerFilterDiscriminator fromValue(String value) {
    for (final item in EventListenerFilterDiscriminator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EventListenerFilterDiscriminator value: $value',
    );
  }
}
