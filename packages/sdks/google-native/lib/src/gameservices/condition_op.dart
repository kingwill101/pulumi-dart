import 'package:pulumi/pulumi.dart' as pulumi;

/// An operator to apply the subject with.
enum ConditionOp implements pulumi.PulumiEnum<String> {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOp(this.wireValue);
  @override
  final String wireValue;

  static ConditionOp fromValue(String value) {
    for (final item in ConditionOp.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOp value: $value');
  }
}
