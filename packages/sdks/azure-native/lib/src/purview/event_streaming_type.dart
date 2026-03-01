/// The event streaming service type
enum EventStreamingType {
  valueNone("None"),
  valueManaged("Managed"),
  valueAzure("Azure");

  const EventStreamingType(this.value);
  final String value;

  static EventStreamingType fromValue(String value) {
    for (final item in EventStreamingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventStreamingType value: $value');
  }
}

