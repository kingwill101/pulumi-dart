enum SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 {
  advanced("ADVANCED"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1(this.value);
  final String value;

  static SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 value: $value');
  }
}

