/// Whether to enable / disable / inherite default hebavior for import features analysis.
enum GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState {
  stateUnspecified("STATE_UNSPECIFIED"),
  default_("DEFAULT"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState(this.wireValue);
  final String wireValue;

  static GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState value: $value');
  }
}

