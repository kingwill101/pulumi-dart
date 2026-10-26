import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. Orientation of the card.
enum GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation implements pulumi.PulumiEnum<String> {
  cardOrientationUnspecified("CARD_ORIENTATION_UNSPECIFIED"),
  horizontal("HORIZONTAL"),
  vertical("VERTICAL");

  const GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardCardOrientation value: $value');
  }
}
