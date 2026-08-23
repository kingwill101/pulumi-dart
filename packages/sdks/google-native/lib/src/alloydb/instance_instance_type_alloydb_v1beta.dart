/// Required. The type of the instance. Specified at creation time.
enum InstanceInstanceTypeAlloydbV1beta {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  primary("PRIMARY"),
  readPool("READ_POOL"),
  secondary("SECONDARY");

  const InstanceInstanceTypeAlloydbV1beta(this.wireValue);
  final String wireValue;

  static InstanceInstanceTypeAlloydbV1beta fromValue(String value) {
    for (final item in InstanceInstanceTypeAlloydbV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceTypeAlloydbV1beta value: $value');
  }
}
