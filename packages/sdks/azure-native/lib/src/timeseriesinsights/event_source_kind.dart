/// The kind of the event source.
enum EventSourceKind {
  valueMicrosoftEventHub("Microsoft.EventHub"),
  valueMicrosoftIoTHub("Microsoft.IoTHub");

  const EventSourceKind(this.wireValue);
  final String wireValue;

  static EventSourceKind fromValue(String value) {
    for (final item in EventSourceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSourceKind value: $value');
  }
}

