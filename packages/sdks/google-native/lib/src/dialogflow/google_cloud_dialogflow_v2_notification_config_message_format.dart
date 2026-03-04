/// Format of message.
enum GoogleCloudDialogflowV2NotificationConfigMessageFormat {
  messageFormatUnspecified("MESSAGE_FORMAT_UNSPECIFIED"),
  proto("PROTO"),
  json("JSON");

  const GoogleCloudDialogflowV2NotificationConfigMessageFormat(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2NotificationConfigMessageFormat fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDialogflowV2NotificationConfigMessageFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowV2NotificationConfigMessageFormat value: $value',
    );
  }
}
