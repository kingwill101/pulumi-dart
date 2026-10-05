import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The optimization goal of the metric.
enum GoogleCloudMlV1StudyConfigMetricSpecGoal implements pulumi.PulumiEnum<String> {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudMlV1StudyConfigMetricSpecGoal(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudMlV1StudyConfigMetricSpecGoal fromValue(String value) {
    for (final item in GoogleCloudMlV1StudyConfigMetricSpecGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1StudyConfigMetricSpecGoal value: $value');
  }
}
