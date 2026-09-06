import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the event source.
enum EventSourceKind implements pulumi.PulumiEnum<String> {
  valueMicrosoftEventHub("Microsoft.EventHub"),
  valueMicrosoftIoTHub("Microsoft.IoTHub");

  const EventSourceKind(this.wireValue);
  @override
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
