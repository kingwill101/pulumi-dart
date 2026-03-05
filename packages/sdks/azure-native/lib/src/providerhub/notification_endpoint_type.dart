/// The endpoint type.
enum NotificationEndpointType {
  webhook("Webhook"),
  eventhub("Eventhub");

  const NotificationEndpointType(this.wireValue);
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

