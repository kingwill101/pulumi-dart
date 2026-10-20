import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. What type of media is the content (ie "audio").
enum GoogleCloudDialogflowV2IntentMessageMediaContentMediaType implements pulumi.PulumiEnum<String> {
  responseMediaTypeUnspecified("RESPONSE_MEDIA_TYPE_UNSPECIFIED"),
  audio("AUDIO");

  const GoogleCloudDialogflowV2IntentMessageMediaContentMediaType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2IntentMessageMediaContentMediaType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2IntentMessageMediaContentMediaType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2IntentMessageMediaContentMediaType value: $value');
  }
}
