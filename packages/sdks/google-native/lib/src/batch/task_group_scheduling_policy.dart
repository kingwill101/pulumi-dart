import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheduling policy for Tasks in the TaskGroup. The default value is AS_SOON_AS_POSSIBLE.
enum TaskGroupSchedulingPolicy implements pulumi.PulumiEnum<String> {
  schedulingPolicyUnspecified("SCHEDULING_POLICY_UNSPECIFIED"),
  asSoonAsPossible("AS_SOON_AS_POSSIBLE"),
  inOrder("IN_ORDER");

  const TaskGroupSchedulingPolicy(this.wireValue);
  @override
  final String wireValue;

  static TaskGroupSchedulingPolicy fromValue(String value) {
    for (final item in TaskGroupSchedulingPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaskGroupSchedulingPolicy value: $value');
  }
}
