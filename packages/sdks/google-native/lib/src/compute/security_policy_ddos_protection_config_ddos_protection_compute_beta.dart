enum SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta(this.wireValue);
  final String wireValue;

  static SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta value: $value');
  }
}
