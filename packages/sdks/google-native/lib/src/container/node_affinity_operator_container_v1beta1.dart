/// Operator for NodeAffinity.
enum NodeAffinityOperatorContainerV1beta1 {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const NodeAffinityOperatorContainerV1beta1(this.wireValue);
  final String wireValue;

  static NodeAffinityOperatorContainerV1beta1 fromValue(String value) {
    for (final item in NodeAffinityOperatorContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NodeAffinityOperatorContainerV1beta1 value: $value',
    );
  }
}
