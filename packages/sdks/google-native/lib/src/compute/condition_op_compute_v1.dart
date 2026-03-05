/// This is deprecated and has no effect. Do not use.
enum ConditionOpComputeV1 {
  discharged("DISCHARGED"),
  equals("EQUALS"),
  in_("IN"),
  notEquals("NOT_EQUALS"),
  notIn("NOT_IN"),
  noOp("NO_OP");

  const ConditionOpComputeV1(this.wireValue);
  final String wireValue;

  static ConditionOpComputeV1 fromValue(String value) {
    for (final item in ConditionOpComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOpComputeV1 value: $value');
  }
}

