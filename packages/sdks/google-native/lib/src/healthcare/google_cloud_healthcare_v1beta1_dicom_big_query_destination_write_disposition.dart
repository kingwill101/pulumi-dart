/// Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
enum GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition {
  writeDispositionUnspecified("WRITE_DISPOSITION_UNSPECIFIED"),
  writeEmpty("WRITE_EMPTY"),
  writeTruncate("WRITE_TRUNCATE"),
  writeAppend("WRITE_APPEND");

  const GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition
  fromValue(String value) {
    for (final item
        in GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition value: $value',
    );
  }
}
