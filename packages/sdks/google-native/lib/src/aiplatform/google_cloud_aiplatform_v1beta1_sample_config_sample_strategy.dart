/// Field to choose sampling strategy. Sampling strategy will decide which data should be selected for human labeling in every batch.
enum GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy {
  sampleStrategyUnspecified("SAMPLE_STRATEGY_UNSPECIFIED"),
  uncertainty("UNCERTAINTY");

  const GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy(this.value);
  final String value;

  static GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1SampleConfigSampleStrategy value: $value');
  }
}

