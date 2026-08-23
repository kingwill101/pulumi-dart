/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationAction {
  delete("DELETE"),
  instanceTerminationActionUnspecified("INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationAction(this.wireValue);
  final String wireValue;

  static SchedulingInstanceTerminationAction fromValue(String value) {
    for (final item in SchedulingInstanceTerminationAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingInstanceTerminationAction value: $value');
  }
}
