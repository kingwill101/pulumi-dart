/// Required. op specifies the operation to perform.
enum TransformationRuleActionOp {
  opUnspecified("OP_UNSPECIFIED"),
  remove("REMOVE"),
  move("MOVE"),
  copy("COPY"),
  add("ADD"),
  test("TEST"),
  replace("REPLACE");

  const TransformationRuleActionOp(this.wireValue);
  final String wireValue;

  static TransformationRuleActionOp fromValue(String value) {
    for (final item in TransformationRuleActionOp.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformationRuleActionOp value: $value');
  }
}
