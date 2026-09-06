import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the event streaming service
enum EventStreamingState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const EventStreamingState(this.wireValue);
  @override
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
