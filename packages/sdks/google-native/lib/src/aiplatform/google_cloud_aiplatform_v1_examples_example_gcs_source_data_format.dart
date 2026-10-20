import 'package:pulumi/pulumi.dart' as pulumi;

/// The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
enum GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat implements pulumi.PulumiEnum<String> {
  dataFormatUnspecified("DATA_FORMAT_UNSPECIFIED"),
  jsonl("JSONL");

  const GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1ExamplesExampleGcsSourceDataFormat value: $value');
  }
}
