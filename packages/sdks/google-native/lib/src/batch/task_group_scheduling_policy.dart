/// Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
enum TaskGroupSchedulingPolicy {
  schedulingPolicyUnspecified("SCHEDULING_POLICY_UNSPECIFIED"),
  asSoonAsPossible("AS_SOON_AS_POSSIBLE"),
  inOrder("IN_ORDER");

  const TaskGroupSchedulingPolicy(this.value);
  final String value;

  static TaskGroupSchedulingPolicy fromValue(String value) {
    for (final item in TaskGroupSchedulingPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskGroupSchedulingPolicy value: $value');
  }
}

