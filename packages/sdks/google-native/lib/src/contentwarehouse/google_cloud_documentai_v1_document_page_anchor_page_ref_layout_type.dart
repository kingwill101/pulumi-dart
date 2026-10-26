import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of the layout element that is being referenced if any.
enum GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType implements pulumi.PulumiEnum<String> {
  layoutTypeUnspecified("LAYOUT_TYPE_UNSPECIFIED"),
  block("BLOCK"),
  paragraph("PARAGRAPH"),
  line("LINE"),
  token("TOKEN"),
  visualElement("VISUAL_ELEMENT"),
  table("TABLE"),
  formField("FORM_FIELD");

  const GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType fromValue(String value) {
    for (final item in GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType value: $value');
  }
}
