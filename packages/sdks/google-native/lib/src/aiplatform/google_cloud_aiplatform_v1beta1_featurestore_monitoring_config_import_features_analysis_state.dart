import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to enable / disable / inherite default hebavior for import features analysis.
enum GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  default_("DEFAULT"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState value: $value');
  }
}
