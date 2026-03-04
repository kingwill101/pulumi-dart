enum InstanceSuspensionReasonItem {
  sqlSuspensionReasonUnspecified("SQL_SUSPENSION_REASON_UNSPECIFIED"),
  billingIssue("BILLING_ISSUE"),
  legalIssue("LEGAL_ISSUE"),
  operationalIssue("OPERATIONAL_ISSUE"),
  kmsKeyIssue("KMS_KEY_ISSUE");

  const InstanceSuspensionReasonItem(this.wireValue);
  final String wireValue;

  static InstanceSuspensionReasonItem fromValue(String value) {
    for (final item in InstanceSuspensionReasonItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSuspensionReasonItem value: $value');
  }
}
