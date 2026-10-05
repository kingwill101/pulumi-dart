import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationActionComputeV1 implements pulumi.PulumiEnum<String> {
  delete("DELETE"),
  instanceTerminationActionUnspecified("INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationActionComputeV1(this.wireValue);
  @override
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
