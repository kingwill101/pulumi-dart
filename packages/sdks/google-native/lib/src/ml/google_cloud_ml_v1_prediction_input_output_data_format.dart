/// Optional. Format of the output data files, defaults to JSON.
enum GoogleCloudMlV1PredictionInputOutputDataFormat {
  dataFormatUnspecified("DATA_FORMAT_UNSPECIFIED"),
  json("JSON"),
  text("TEXT"),
  tfRecord("TF_RECORD"),
  tfRecordGzip("TF_RECORD_GZIP"),
  csv("CSV");

  const GoogleCloudMlV1PredictionInputOutputDataFormat(this.value);
  final String value;

  static GoogleCloudMlV1PredictionInputOutputDataFormat fromValue(String value) {
    for (final item in GoogleCloudMlV1PredictionInputOutputDataFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1PredictionInputOutputDataFormat value: $value');
  }
}

