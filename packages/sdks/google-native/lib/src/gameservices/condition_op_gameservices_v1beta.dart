/// An operator to apply the subject with.
enum ConditionOpGameservicesV1beta {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOpGameservicesV1beta(this.wireValue);
  final String wireValue;

  static ConditionOpGameservicesV1beta fromValue(String value) {
    for (final item in ConditionOpGameservicesV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOpGameservicesV1beta value: $value');
  }
}
