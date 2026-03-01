/// The scope to be used for evaluation of parameters, variables and functions in a nested template.
enum ExpressionEvaluationOptionsScopeType {
  valueNotSpecified("NotSpecified"),
  valueOuter("Outer"),
  valueInner("Inner");

  const ExpressionEvaluationOptionsScopeType(this.value);
  final String value;

  static ExpressionEvaluationOptionsScopeType fromValue(String value) {
    for (final item in ExpressionEvaluationOptionsScopeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExpressionEvaluationOptionsScopeType value: $value');
  }
}

