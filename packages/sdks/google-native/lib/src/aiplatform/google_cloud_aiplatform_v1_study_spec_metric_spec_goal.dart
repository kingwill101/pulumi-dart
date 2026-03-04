/// Required. The optimization goal of the metric.
enum GoogleCloudAiplatformV1StudySpecMetricSpecGoal {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudAiplatformV1StudySpecMetricSpecGoal(this.wireValue);
  final String wireValue;

  static GoogleCloudAiplatformV1StudySpecMetricSpecGoal fromValue(
    String value,
  ) {
    for (final item in GoogleCloudAiplatformV1StudySpecMetricSpecGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1StudySpecMetricSpecGoal value: $value',
    );
  }
}
