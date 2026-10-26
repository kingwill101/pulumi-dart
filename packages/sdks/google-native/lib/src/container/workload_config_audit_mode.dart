import 'package:pulumi/pulumi.dart' as pulumi;

/// Sets which mode of auditing should be used for the cluster's workloads.
enum WorkloadConfigAuditMode implements pulumi.PulumiEnum<String> {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC"),
  baseline("BASELINE"),
  restricted("RESTRICTED");

  const WorkloadConfigAuditMode(this.wireValue);
  @override
  final String wireValue;

  static WorkloadConfigAuditMode fromValue(String value) {
    for (final item in WorkloadConfigAuditMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkloadConfigAuditMode value: $value');
  }
}
