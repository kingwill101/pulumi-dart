import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator for NodeAffinity.
enum NodeAffinityOperator implements pulumi.PulumiEnum<String> {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const NodeAffinityOperator(this.wireValue);
  @override
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
