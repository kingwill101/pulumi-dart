/// The endpoint type.
enum NotificationEndpointType {
  webhook("Webhook"),
  eventhub("Eventhub");

  const NotificationEndpointType(this.value);
  final String value;

  static NotificationEndpointType fromValue(String value) {
    for (final item in NotificationEndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationEndpointType value: $value');
  }
}

