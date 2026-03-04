/// The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
enum GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat {
  dataFormatUnspecified("DATA_FORMAT_UNSPECIFIED"),
  jsonl("JSONL");

  const GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat(
    this.wireValue,
  );
  final String wireValue;

  static GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat
  fromValue(String value) {
    for (final item
        in GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat value: $value',
    );
  }
}
