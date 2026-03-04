/// Required. The format of the input data files.
enum GoogleCloudMlV1PredictionInputDataFormat {
  dataFormatUnspecified("DATA_FORMAT_UNSPECIFIED"),
  json("JSON"),
  text("TEXT"),
  tfRecord("TF_RECORD"),
  tfRecordGzip("TF_RECORD_GZIP"),
  csv("CSV");

  const GoogleCloudMlV1PredictionInputDataFormat(this.wireValue);
  final String wireValue;

  static GoogleCloudMlV1PredictionInputDataFormat fromValue(String value) {
    for (final item in GoogleCloudMlV1PredictionInputDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudMlV1PredictionInputDataFormat value: $value',
    );
  }
}
