/// Required. Instance type.
enum InstanceType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  basic("BASIC"),
  enterprise("ENTERPRISE"),
  developer("DEVELOPER");

  const InstanceType(this.wireValue);
  final String wireValue;

  static InstanceType fromValue(String value) {
    for (final item in InstanceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceType value: $value');
  }
}

