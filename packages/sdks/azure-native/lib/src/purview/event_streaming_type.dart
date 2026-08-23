/// The event streaming service type
enum EventStreamingType {
  none("None"),
  managed("Managed"),
  azure("Azure");

  const EventStreamingType(this.wireValue);
  final String wireValue;

  static EventStreamingType fromValue(String value) {
    for (final item in EventStreamingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventStreamingType value: $value');
  }
}
