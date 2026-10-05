import 'package:pulumi/pulumi.dart' as pulumi;

/// Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
enum GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal implements pulumi.PulumiEnum<String> {
  flexrsUnspecified("FLEXRS_UNSPECIFIED"),
  flexrsSpeedOptimized("FLEXRS_SPEED_OPTIMIZED"),
  flexrsCostOptimized("FLEXRS_COST_OPTIMIZED");

  const GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal fromValue(String value) {
    for (final item in GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal value: $value');
  }
}
