/// The storage format of the predictions generated BatchPrediction job.
enum GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat {
  predictionFormatUnspecified("PREDICTION_FORMAT_UNSPECIFIED"),
  jsonl("JSONL"),
  bigquery("BIGQUERY");

  const GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat(this.value);
  final String value;

  static GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat value: $value');
  }
}

