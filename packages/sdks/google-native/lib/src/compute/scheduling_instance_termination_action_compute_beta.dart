import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the termination action for the instance.
enum SchedulingInstanceTerminationActionComputeBeta implements pulumi.PulumiEnum<String> {
  delete("DELETE"),
  instanceTerminationActionUnspecified("INSTANCE_TERMINATION_ACTION_UNSPECIFIED"),
  stop("STOP");

  const SchedulingInstanceTerminationActionComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SchedulingInstanceTerminationActionComputeBeta fromValue(String value) {
    for (final item in SchedulingInstanceTerminationActionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingInstanceTerminationActionComputeBeta value: $value');
  }
}
