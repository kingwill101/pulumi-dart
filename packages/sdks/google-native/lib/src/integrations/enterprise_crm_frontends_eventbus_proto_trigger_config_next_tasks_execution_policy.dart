import 'package:pulumi/pulumi.dart' as pulumi;

/// Dictates how next tasks will be executed.
enum EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  runAllMatch("RUN_ALL_MATCH"),
  runFirstMatch("RUN_FIRST_MATCH");

  const EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy(this.wireValue);
  @override
  final String wireValue;

  static EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy fromValue(String value) {
    for (final item in EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmFrontendsEventbusProtoTriggerConfigNextTasksExecutionPolicy value: $value');
  }
}
