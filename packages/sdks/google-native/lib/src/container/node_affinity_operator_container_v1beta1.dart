import 'package:pulumi/pulumi.dart' as pulumi;

/// Operator for NodeAffinity.
enum NodeAffinityOperatorContainerV1beta1 implements pulumi.PulumiEnum<String> {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const NodeAffinityOperatorContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static NodeAffinityOperatorContainerV1beta1 fromValue(String value) {
    for (final item in NodeAffinityOperatorContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeAffinityOperatorContainerV1beta1 value: $value');
  }
}
