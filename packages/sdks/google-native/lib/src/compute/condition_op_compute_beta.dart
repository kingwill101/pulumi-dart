import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
enum ConditionOpComputeBeta implements pulumi.PulumiEnum<String> {
  discharged("DISCHARGED"),
  equals("EQUALS"),
  in_("IN"),
  notEquals("NOT_EQUALS"),
  notIn("NOT_IN"),
  noOp("NO_OP");

  const ConditionOpComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static ConditionOpComputeBeta fromValue(String value) {
    for (final item in ConditionOpComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOpComputeBeta value: $value');
  }
}
