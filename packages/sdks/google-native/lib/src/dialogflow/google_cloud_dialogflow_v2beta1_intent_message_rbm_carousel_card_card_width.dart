import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The width of the cards in the carousel.
enum GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth implements pulumi.PulumiEnum<String> {
  cardWidthUnspecified("CARD_WIDTH_UNSPECIFIED"),
  small("SMALL"),
  medium("MEDIUM");

  const GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth value: $value');
  }
}
