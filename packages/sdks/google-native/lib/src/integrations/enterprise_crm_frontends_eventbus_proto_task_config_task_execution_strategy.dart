/// The policy dictating the execution strategy of this task.
enum EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy {
  whenAllSucceed("WHEN_ALL_SUCCEED"),
  whenAnySucceed("WHEN_ANY_SUCCEED"),
  whenAllTasksAndConditionsSucceed("WHEN_ALL_TASKS_AND_CONDITIONS_SUCCEED");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy(this.wireValue);
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigTaskExecutionStrategy value: $value');
  }
}
