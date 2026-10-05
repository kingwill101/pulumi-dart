import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The optimization goal of the metric.
enum GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal implements pulumi.PulumiEnum<String> {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal value: $value');
  }
}
