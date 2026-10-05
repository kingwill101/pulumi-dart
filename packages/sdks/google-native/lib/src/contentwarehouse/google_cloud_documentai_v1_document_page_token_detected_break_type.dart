import 'package:pulumi/pulumi.dart' as pulumi;

/// Detected break type.
enum GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType implements pulumi.PulumiEnum<String> {
  typeUnspecified("TYPE_UNSPECIFIED"),
  space("SPACE"),
  wideSpace("WIDE_SPACE"),
  hyphen("HYPHEN");

  const GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType fromValue(String value) {
    for (final item in GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType value: $value');
  }
}
