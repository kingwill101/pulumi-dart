import 'package:pulumi/pulumi.dart' as pulumi;

enum EventListenerFilterDiscriminator implements pulumi.PulumiEnum<String> {
  valueEventName("EventName");

  const EventListenerFilterDiscriminator(this.wireValue);
  @override
  final String wireValue;

  static EventListenerFilterDiscriminator fromValue(String value) {
    for (final item in EventListenerFilterDiscriminator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventListenerFilterDiscriminator value: $value');
  }
}
