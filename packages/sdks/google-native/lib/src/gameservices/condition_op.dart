/// An operator to apply the subject with.
enum ConditionOp {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOp(this.wireValue);
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
