/// Sets which mode of auditing should be used for the cluster's workloads.
enum WorkloadConfigAuditMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  basic("BASIC"),
  baseline("BASELINE"),
  restricted("RESTRICTED");

  const WorkloadConfigAuditMode(this.wireValue);
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

