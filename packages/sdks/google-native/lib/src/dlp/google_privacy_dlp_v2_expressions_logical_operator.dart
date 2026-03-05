/// The operator to apply to the result of conditions. Default and currently only supported value is `AND`.
enum GooglePrivacyDlpV2ExpressionsLogicalOperator {
  logicalOperatorUnspecified("LOGICAL_OPERATOR_UNSPECIFIED"),
  and("AND");

  const GooglePrivacyDlpV2ExpressionsLogicalOperator(this.wireValue);
  final String wireValue;

  static GooglePrivacyDlpV2ExpressionsLogicalOperator fromValue(String value) {
    for (final item in GooglePrivacyDlpV2ExpressionsLogicalOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2ExpressionsLogicalOperator value: $value');
  }
}

