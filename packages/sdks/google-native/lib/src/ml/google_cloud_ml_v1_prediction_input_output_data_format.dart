import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Format of the output data files, defaults to JSON.
enum GoogleCloudMlV1PredictionInputOutputDataFormat implements pulumi.PulumiEnum<String> {
  dataFormatUnspecified("DATA_FORMAT_UNSPECIFIED"),
  json("JSON"),
  text("TEXT"),
  tfRecord("TF_RECORD"),
  tfRecordGzip("TF_RECORD_GZIP"),
  csv("CSV");

  const GoogleCloudMlV1PredictionInputOutputDataFormat(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudMlV1PredictionInputOutputDataFormat fromValue(String value) {
    for (final item in GoogleCloudMlV1PredictionInputOutputDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1PredictionInputOutputDataFormat value: $value');
  }
}
