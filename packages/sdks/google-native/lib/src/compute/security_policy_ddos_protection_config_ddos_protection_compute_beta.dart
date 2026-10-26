import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta implements pulumi.PulumiEnum<String> {
  advanced("ADVANCED"),
  advancedPreview("ADVANCED_PREVIEW"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtectionComputeBeta(this.wireValue);
  @override
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
