import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyDdosProtectionConfigDdosProtection implements pulumi.PulumiEnum<String> {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtection(this.wireValue);
  @override
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
