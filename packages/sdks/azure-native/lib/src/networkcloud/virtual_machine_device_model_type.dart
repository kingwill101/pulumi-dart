/// The type of the device model to use.
enum VirtualMachineDeviceModelType {
  t1("T1"),
  t2("T2"),
  t3("T3");

  const VirtualMachineDeviceModelType(this.value);
  final String value;

  static VirtualMachineDeviceModelType fromValue(String value) {
    for (final item in VirtualMachineDeviceModelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineDeviceModelType value: $value');
  }
}

