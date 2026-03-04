/// The state of the event streaming service
enum EventStreamingState {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EventStreamingState(this.wireValue);
  final String wireValue;

  static EventStreamingState fromValue(String value) {
    for (final item in EventStreamingState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventStreamingState value: $value');
  }
}
