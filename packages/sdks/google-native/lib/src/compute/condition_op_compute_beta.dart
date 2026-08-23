/// This is deprecated and has no effect. Do not use.
enum ConditionOpComputeBeta {
  discharged("DISCHARGED"),
  equals("EQUALS"),
  in_("IN"),
  notEquals("NOT_EQUALS"),
  notIn("NOT_IN"),
  noOp("NO_OP");

  const ConditionOpComputeBeta(this.wireValue);
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
