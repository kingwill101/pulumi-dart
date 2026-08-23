/// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
enum SchedulingNodeAffinityOperatorComputeV1 {
  in_("IN"),
  notIn("NOT_IN"),
  operatorUnspecified("OPERATOR_UNSPECIFIED");

  const SchedulingNodeAffinityOperatorComputeV1(this.wireValue);
  final String wireValue;

  static SchedulingNodeAffinityOperatorComputeV1 fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperatorComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingNodeAffinityOperatorComputeV1 value: $value');
  }
}
