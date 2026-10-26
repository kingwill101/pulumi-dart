import 'package:pulumi/pulumi.dart' as pulumi;

/// The operator to apply to the collection of conditions.
enum GooglePrivacyDlpV2PubSubExpressionsLogicalOperator implements pulumi.PulumiEnum<String> {
  logicalOperatorUnspecified("LOGICAL_OPERATOR_UNSPECIFIED"),
  or("OR"),
  and("AND");

  const GooglePrivacyDlpV2PubSubExpressionsLogicalOperator(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2PubSubExpressionsLogicalOperator fromValue(String value) {
    for (final item in GooglePrivacyDlpV2PubSubExpressionsLogicalOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2PubSubExpressionsLogicalOperator value: $value');
  }
}
