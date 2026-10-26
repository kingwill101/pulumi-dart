import 'package:pulumi/pulumi.dart' as pulumi;

/// type of the destination
enum EventSubscriptionDestinationType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  endpoint("ENDPOINT");

  const EventSubscriptionDestinationType(this.wireValue);
  @override
  final String wireValue;

  static EventSubscriptionDestinationType fromValue(String value) {
    for (final item in EventSubscriptionDestinationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSubscriptionDestinationType value: $value');
  }
}
