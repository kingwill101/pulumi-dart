/// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
enum SchedulingNodeAffinityOperatorComputeBeta {
  in_("IN"),
  notIn("NOT_IN"),
  operatorUnspecified("OPERATOR_UNSPECIFIED");

  const SchedulingNodeAffinityOperatorComputeBeta(this.wireValue);
  final String wireValue;

  static SchedulingNodeAffinityOperatorComputeBeta fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperatorComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingNodeAffinityOperatorComputeBeta value: $value');
  }
}
