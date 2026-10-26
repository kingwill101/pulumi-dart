import 'package:pulumi/pulumi.dart' as pulumi;

/// The operator to use for the node resources specified in the `values` parameter.
enum SchedulingNodeAffinityOperator implements pulumi.PulumiEnum<String> {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const SchedulingNodeAffinityOperator(this.wireValue);
  @override
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
