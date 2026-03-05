/// This is deprecated and has no effect. Do not use.
enum ConditionOp {
  discharged("DISCHARGED"),
  equals("EQUALS"),
  in_("IN"),
  notEquals("NOT_EQUALS"),
  notIn("NOT_IN"),
  noOp("NO_OP");

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

