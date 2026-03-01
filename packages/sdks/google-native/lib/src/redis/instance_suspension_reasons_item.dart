enum InstanceSuspensionReasonsItem {
  suspensionReasonUnspecified("SUSPENSION_REASON_UNSPECIFIED"),
  customerManagedKeyIssue("CUSTOMER_MANAGED_KEY_ISSUE");

  const InstanceSuspensionReasonsItem(this.value);
  final String value;

  static InstanceSuspensionReasonsItem fromValue(String value) {
    for (final item in InstanceSuspensionReasonsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSuspensionReasonsItem value: $value');
  }
}

