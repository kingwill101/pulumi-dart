/// The policy type.
enum IAASVMPolicyType {
  valueInvalid("Invalid"),
  valueV1("V1"),
  valueV2("V2");

  const IAASVMPolicyType(this.value);
  final String value;

  static IAASVMPolicyType fromValue(String value) {
    for (final item in IAASVMPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IAASVMPolicyType value: $value');
  }
}

