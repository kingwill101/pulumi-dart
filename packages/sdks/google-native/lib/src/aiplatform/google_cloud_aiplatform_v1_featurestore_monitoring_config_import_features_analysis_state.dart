import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to enable / disable / inherite default hebavior for import features analysis.
enum GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  default_("DEFAULT"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysisState(this.wireValue);
  @override
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
