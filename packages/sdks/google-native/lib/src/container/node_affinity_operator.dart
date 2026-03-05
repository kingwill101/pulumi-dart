/// Operator for NodeAffinity.
enum NodeAffinityOperator {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const NodeAffinityOperator(this.wireValue);
  final String wireValue;

  static NodeAffinityOperator fromValue(String value) {
    for (final item in NodeAffinityOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeAffinityOperator value: $value');
  }
}

