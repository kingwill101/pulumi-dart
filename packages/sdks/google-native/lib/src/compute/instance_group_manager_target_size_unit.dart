/// The unit of measure for the target size.
enum InstanceGroupManagerTargetSizeUnit {
  instance("INSTANCE"),
  vcpu("VCPU");

  const InstanceGroupManagerTargetSizeUnit(this.wireValue);
  final String wireValue;

  static InstanceGroupManagerTargetSizeUnit fromValue(String value) {
    for (final item in InstanceGroupManagerTargetSizeUnit.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceGroupManagerTargetSizeUnit value: $value');
  }
}
