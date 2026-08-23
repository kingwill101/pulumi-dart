/// Default summarization model to be used.
enum GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel {
  summarizationModelUnspecified("SUMMARIZATION_MODEL_UNSPECIFIED"),
  baselineModel("BASELINE_MODEL");

  const GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel(this.wireValue);
  final String wireValue;

  static GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel fromValue(String value) {
    for (final item in GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfigSummarizationModel value: $value');
  }
}
