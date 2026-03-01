/// Indicates the policy to apply to events that arrive out of order in the input event stream.
enum EventsOutOfOrderPolicy {
  valueAdjust("Adjust"),
  valueDrop("Drop");

  const EventsOutOfOrderPolicy(this.value);
  final String value;

  static EventsOutOfOrderPolicy fromValue(String value) {
    for (final item in EventsOutOfOrderPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventsOutOfOrderPolicy value: $value');
  }
}

