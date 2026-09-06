import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy type.
enum IAASVMPolicyType implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueV1("V1"),
  valueV2("V2");

  const IAASVMPolicyType(this.wireValue);
  @override
  final String wireValue;

  static IAASVMPolicyType fromValue(String value) {
    for (final item in IAASVMPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IAASVMPolicyType value: $value');
  }
}
