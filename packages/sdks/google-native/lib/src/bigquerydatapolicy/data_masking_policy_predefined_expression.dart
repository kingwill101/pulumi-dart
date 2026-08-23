/// A predefined masking expression.
enum DataMaskingPolicyPredefinedExpression {
  predefinedExpressionUnspecified("PREDEFINED_EXPRESSION_UNSPECIFIED"),
  sha256("SHA256"),
  alwaysNull("ALWAYS_NULL"),
  defaultMaskingValue("DEFAULT_MASKING_VALUE"),
  lastFourCharacters("LAST_FOUR_CHARACTERS"),
  firstFourCharacters("FIRST_FOUR_CHARACTERS"),
  emailMask("EMAIL_MASK"),
  dateYearMask("DATE_YEAR_MASK");

  const DataMaskingPolicyPredefinedExpression(this.wireValue);
  final String wireValue;

  static DataMaskingPolicyPredefinedExpression fromValue(String value) {
    for (final item in DataMaskingPolicyPredefinedExpression.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingPolicyPredefinedExpression value: $value');
  }
}
