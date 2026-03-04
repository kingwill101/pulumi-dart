enum EventListenerEndpointDiscriminator {
  valueEventHub("EventHub");

  const EventListenerEndpointDiscriminator(this.wireValue);
  final String wireValue;

  static EventListenerEndpointDiscriminator fromValue(String value) {
    for (final item in EventListenerEndpointDiscriminator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EventListenerEndpointDiscriminator value: $value',
    );
  }
}
