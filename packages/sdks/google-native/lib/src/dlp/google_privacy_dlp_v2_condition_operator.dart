/// Required. Operator used to compare the field or infoType to the value.
enum GooglePrivacyDlpV2ConditionOperator {
  relationalOperatorUnspecified("RELATIONAL_OPERATOR_UNSPECIFIED"),
  equalTo("EQUAL_TO"),
  notEqualTo("NOT_EQUAL_TO"),
  greaterThan("GREATER_THAN"),
  lessThan("LESS_THAN"),
  greaterThanOrEquals("GREATER_THAN_OR_EQUALS"),
  lessThanOrEquals("LESS_THAN_OR_EQUALS"),
  exists("EXISTS");

  const GooglePrivacyDlpV2ConditionOperator(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2ConditionOperator fromValue(String value) {
    for (final item in GooglePrivacyDlpV2ConditionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2ConditionOperator value: $value');
  }
}

