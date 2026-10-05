import 'package:pulumi/pulumi.dart' as pulumi;

enum SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 implements pulumi.PulumiEnum<String> {
  advanced("ADVANCED"),
  standard("STANDARD");

  const SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 fromValue(String value) {
    for (final item in SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyDdosProtectionConfigDdosProtectionComputeV1 value: $value');
  }
}
