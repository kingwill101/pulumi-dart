import 'package:pulumi/pulumi.dart' as pulumi;

enum EventListenerEndpointDiscriminator implements pulumi.PulumiEnum<String> {
  valueEventHub("EventHub");

  const EventListenerEndpointDiscriminator(this.wireValue);
  @override
  final String wireValue;

  static EventListenerEndpointDiscriminator fromValue(String value) {
    for (final item in EventListenerEndpointDiscriminator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventListenerEndpointDiscriminator value: $value');
  }
}
