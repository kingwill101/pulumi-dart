import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationAction implements pulumi.PulumiEnum<String> {
  delete("DELETE"),
  instanceTerminationActionUnspecified("INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationAction(this.wireValue);
  @override
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
