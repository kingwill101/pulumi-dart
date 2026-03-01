/// The `InstanceType` of the current instance.
enum InstanceInstanceType {
  instanceTypeUnspecified("INSTANCE_TYPE_UNSPECIFIED"),
  provisioned("PROVISIONED"),
  freeInstance("FREE_INSTANCE");

  const InstanceInstanceType(this.value);
  final String value;

  static InstanceInstanceType fromValue(String value) {
    for (final item in InstanceInstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceInstanceType value: $value');
  }
}

