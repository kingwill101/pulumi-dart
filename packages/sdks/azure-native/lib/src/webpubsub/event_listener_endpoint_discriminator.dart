enum EventListenerEndpointDiscriminator {
  valueEventHub("EventHub");

  const EventListenerEndpointDiscriminator(this.value);
  final String value;

  static EventListenerEndpointDiscriminator fromValue(String value) {
    for (final item in EventListenerEndpointDiscriminator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventListenerEndpointDiscriminator value: $value');
  }
}

