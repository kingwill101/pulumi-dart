enum InstanceSuspensionReasonsItemRedisV1beta1 {
  suspensionReasonUnspecified("SUSPENSION_REASON_UNSPECIFIED"),
  customerManagedKeyIssue("CUSTOMER_MANAGED_KEY_ISSUE");

  const InstanceSuspensionReasonsItemRedisV1beta1(this.value);
  final String value;

  static InstanceSuspensionReasonsItemRedisV1beta1 fromValue(String value) {
    for (final item in InstanceSuspensionReasonsItemRedisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceSuspensionReasonsItemRedisV1beta1 value: $value');
  }
}

