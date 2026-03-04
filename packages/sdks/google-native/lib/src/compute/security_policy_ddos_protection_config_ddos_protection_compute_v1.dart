enum SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 {
  advanced("ADVANCED"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1(
    this.wireValue,
  );
  final String wireValue;

  static SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 fromValue(
    String value,
  ) {
    for (final item
        in SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 value: $value',
    );
  }
}
