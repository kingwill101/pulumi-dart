/// The operator to use for the node resources specified in the `values` parameter.
enum SchedulingNodeAffinityOperator {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const SchedulingNodeAffinityOperator(this.wireValue);
  final String wireValue;

  static SchedulingNodeAffinityOperator fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingNodeAffinityOperator value: $value');
  }
}

