/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationActionComputeV1 {
  delete("DELETE"),
  instanceTerminationActionUnspecified("INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationActionComputeV1(this.wireValue);
  final String wireValue;

  static SchedulingInstanceTerminationActionComputeV1 fromValue(String value) {
    for (final item in SchedulingInstanceTerminationActionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingInstanceTerminationActionComputeV1 value: $value');
  }
}
