import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The optimization goal of the metric.
enum GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal implements pulumi.PulumiEnum<String> {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1beta1NasJobSpecMultiTrialAlgorithmSpecMetricSpecGoal value: $value');
  }
}
