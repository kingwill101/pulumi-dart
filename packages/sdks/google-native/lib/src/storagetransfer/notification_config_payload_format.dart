/// Required. The desired format of the notification message payloads.
enum NotificationConfigPayloadFormat {
  payloadFormatUnspecified("PAYLOAD_FORMAT_UNSPECIFIED"),
  none("NONE"),
  json("JSON");

  const NotificationConfigPayloadFormat(this.wireValue);
  final String wireValue;

  static NotificationConfigPayloadFormat fromValue(String value) {
    for (final item in NotificationConfigPayloadFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NotificationConfigPayloadFormat value: $value',
    );
  }
}
