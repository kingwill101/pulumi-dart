/// Default summarization model to be used.
enum GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel {
  summarizationModelUnspecified("SUMMARIZATION_MODEL_UNSPECIFIED"),
  baselineModel("BASELINE_MODEL");

  const GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel(this.value);
  final String value;

  static GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel fromValue(String value) {
    for (final item in GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel value: $value');
  }
}

