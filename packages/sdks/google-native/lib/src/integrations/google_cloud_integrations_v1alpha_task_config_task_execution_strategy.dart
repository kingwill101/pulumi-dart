import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The policy dictating the execution strategy of this task.
enum GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy implements pulumi.PulumiEnum<String> {
  taskExecutionStrategyUnspecified("TASK_EXECUTION_STRATEGY_UNSPECIFIED"),
  whenAllSucceed("WHEN_ALL_SUCCEED"),
  whenAnySucceed("WHEN_ANY_SUCCEED"),
  whenAllTasksAndConditionsSucceed("WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED");

  const GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaTaskConfigTaskExecutionStrategy value: $value');
  }
}
