import 'package:pulumi/pulumi.dart' as pulumi;

/// The endpoint type.
enum NotificationEndpointType implements pulumi.PulumiEnum<String> {
  webhook("Webhook"),
  eventhub("Eventhub");

  const NotificationEndpointType(this.wireValue);
  @override
  final String wireValue;

  static NotificationEndpointType fromValue(String value) {
    for (final item in NotificationEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationEndpointType value: $value');
  }
}
