/// Required. The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
enum GoogleCloudMlV1HyperparameterSpecGoal {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudMlV1HyperparameterSpecGoal(this.wireValue);
  final String wireValue;

  static GoogleCloudMlV1HyperparameterSpecGoal fromValue(String value) {
    for (final item in GoogleCloudMlV1HyperparameterSpecGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudMlV1HyperparameterSpecGoal value: $value');
  }
}

