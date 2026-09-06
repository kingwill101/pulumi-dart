import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the policy to apply to events that arrive out of order in the input event stream.
enum EventsOutOfOrderPolicy implements pulumi.PulumiEnum<String> {
  valueAdjust("Adjust"),
  valueDrop("Drop");

  const EventsOutOfOrderPolicy(this.wireValue);
  @override
  final String wireValue;

  static EventsOutOfOrderPolicy fromValue(String value) {
    for (final item in EventsOutOfOrderPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventsOutOfOrderPolicy value: $value');
  }
}
