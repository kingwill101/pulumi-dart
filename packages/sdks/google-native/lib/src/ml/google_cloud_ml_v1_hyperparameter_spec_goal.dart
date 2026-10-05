import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
enum GoogleCloudMlV1HyperparameterSpecGoal implements pulumi.PulumiEnum<String> {
  goalTypeUnspecified("GOAL_TYPE_UNSPECIFIED"),
  maximize("MAXIMIZE"),
  minimize("MINIMIZE");

  const GoogleCloudMlV1HyperparameterSpecGoal(this.wireValue);
  @override
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
