import 'package:pulumi/pulumi.dart' as pulumi;

/// Which Flexible Resource Scheduling mode to run in.
enum EnvironmentFlexResourceSchedulingGoal implements pulumi.PulumiEnum<String> {
  flexrsUnspecified("FLEXRS_UNSPECIFIED"),
  flexrsSpeedOptimized("FLEXRS_SPEED_OPTIMIZED"),
  flexrsCostOptimized("FLEXRS_COST_OPTIMIZED");

  const EnvironmentFlexResourceSchedulingGoal(this.wireValue);
  @override
  final String wireValue;

  static EnvironmentFlexResourceSchedulingGoal fromValue(String value) {
    for (final item in EnvironmentFlexResourceSchedulingGoal.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnvironmentFlexResourceSchedulingGoal value: $value');
  }
}
