/// Detected orientation for the Layout.
enum GoogleCloudDocumentaiV1DocumentPageLayoutOrientation {
  orientationUnspecified("ORIENTATION_UNSPECIFIED"),
  pageUp("PAGE_UP"),
  pageRight("PAGE_RIGHT"),
  pageDown("PAGE_DOWN"),
  pageLeft("PAGE_LEFT");

  const GoogleCloudDocumentaiV1DocumentPageLayoutOrientation(this.wireValue);
  final String wireValue;

  static GoogleCloudDocumentaiV1DocumentPageLayoutOrientation fromValue(String value) {
    for (final item in GoogleCloudDocumentaiV1DocumentPageLayoutOrientation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDocumentaiV1DocumentPageLayoutOrientation value: $value');
  }
}
