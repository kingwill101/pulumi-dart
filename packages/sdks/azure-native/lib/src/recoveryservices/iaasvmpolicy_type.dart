enum IAASVMPolicyType {
  valueInvalid("Invalid"),
  valueV1("V1"),
  valueV2("V2");

  const IAASVMPolicyType(this.wireValue);
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

