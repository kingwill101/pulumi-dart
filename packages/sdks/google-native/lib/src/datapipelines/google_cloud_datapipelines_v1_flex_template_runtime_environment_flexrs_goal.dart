/// Set FlexRS goal for the job. https://cloud.google.com/dataflow/docs/guides/flexrs
enum GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal {
  flexrsUnspecified("FLEXRS_UNSPECIFIED"),
  flexrsSpeedOptimized("FLEXRS_SPEED_OPTIMIZED"),
  flexrsCostOptimized("FLEXRS_COST_OPTIMIZED");

  const GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironmentFlexrsGoal(this.wireValue);
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

