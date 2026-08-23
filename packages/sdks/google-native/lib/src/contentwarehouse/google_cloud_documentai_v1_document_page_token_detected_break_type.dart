/// Detected break type.
enum GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  space("SPACE"),
  wideSpace("WIDE_SPACE"),
  hyphen("HYPHEN");

  const GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType(this.wireValue);
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
