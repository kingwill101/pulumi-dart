import 'package:pulumi/pulumi.dart' as pulumi;

enum GooglePrivacyDlpV2InspectConfigContentOptionsItem implements pulumi.PulumiEnum<String> {
  contentUnspecified("CONTENT_UNSPECIFIED"),
  contentText("CONTENT_TEXT"),
  contentImage("CONTENT_IMAGE");

  const GooglePrivacyDlpV2InspectConfigContentOptionsItem(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2InspectConfigContentOptionsItem fromValue(String value) {
    for (final item in GooglePrivacyDlpV2InspectConfigContentOptionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2InspectConfigContentOptionsItem value: $value');
  }
}
