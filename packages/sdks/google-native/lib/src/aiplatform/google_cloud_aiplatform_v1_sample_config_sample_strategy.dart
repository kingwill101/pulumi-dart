import 'package:pulumi/pulumi.dart' as pulumi;

/// Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
enum GoogleCloudAiplatformV1SampleConfigSampleStrategy implements pulumi.PulumiEnum<String> {
  sampleStrategyUnspecified("SAMPLE_STRATEGY_UNSPECIFIED"),
  uncertainty("UNCERTAINTY");

  const GoogleCloudAiplatformV1SampleConfigSampleStrategy(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1SampleConfigSampleStrategy fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1SampleConfigSampleStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1SampleConfigSampleStrategy value: $value');
  }
}
