/// The policy dictating the execution of the next set of tasks for the current task.
enum EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy {
  unspecified("UNSPECIFIED"),
  runAllMatch("RUN_ALL_MATCH"),
  runFirstMatch("RUN_FIRST_MATCH");

  const EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy(this.wireValue);
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTaskConfigNextTasksExecutionPolicy value: $value');
  }
}
