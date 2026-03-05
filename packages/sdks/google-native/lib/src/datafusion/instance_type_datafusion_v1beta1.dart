/// Required. Instance type.
enum InstanceTypeDatafusionV1beta1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  basic("BASIC"),
  enterprise("ENTERPRISE"),
  developer("DEVELOPER");

  const InstanceTypeDatafusionV1beta1(this.wireValue);
  final String wireValue;

  static InstanceTypeDatafusionV1beta1 fromValue(String value) {
    for (final item in InstanceTypeDatafusionV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceTypeDatafusionV1beta1 value: $value');
  }
}

