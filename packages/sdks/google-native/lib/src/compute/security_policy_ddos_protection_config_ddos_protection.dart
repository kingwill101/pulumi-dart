enum SecurityPolicyDdosProtectionConfigDdosProtection {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtection(this.wireValue);
  final String wireValue;

  static SecurityPolicyDdosProtectionConfigDdosProtection fromValue(String value) {
    for (final item in SecurityPolicyDdosProtectionConfigDdosProtection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyDdosProtectionConfigDdosProtection value: $value');
  }
}
