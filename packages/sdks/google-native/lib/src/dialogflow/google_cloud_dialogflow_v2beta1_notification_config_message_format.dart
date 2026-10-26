import 'package:pulumi/pulumi.dart' as pulumi;

/// Format of message.
enum GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat implements pulumi.PulumiEnum<String> {
  messageFormatUnspecified("MESSAGE_FORMAT_UNSPECIFIED"),
  proto("PROTO"),
  json("JSON");

  const GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat value: $value');
  }
}
