import 'package:pulumi/pulumi.dart' as pulumi;

/// The event hub type.
enum EventHubType implements pulumi.PulumiEnum<String> {
  notification("Notification"),
  hook("Hook");

  const EventHubType(this.wireValue);
  @override
  final String wireValue;

  static EventHubType fromValue(String value) {
    for (final item in EventHubType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventHubType value: $value');
  }
}
