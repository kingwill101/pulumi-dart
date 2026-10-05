import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Dictates how next tasks will be executed.
enum GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy implements pulumi.PulumiEnum<String> {
  nextTasksExecutionPolicyUnspecified("NEXT_TASKS_EXECUTION_POLICY_UNSPECIFIED"),
  runAllMatch("RUN_ALL_MATCH"),
  runFirstMatch("RUN_FIRST_MATCH");

  const GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy fromValue(String value) {
    for (final item in GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudIntegrationsV1alphaTriggerConfigNextTasksExecutionPolicy value: $value');
  }
}
