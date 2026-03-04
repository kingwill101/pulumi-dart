/// The IP allocation mechanism for the virtual machine.
/// Dynamic and Static are only valid for l3Network which may also specify Disabled.
/// Otherwise, Disabled is the only permitted value.
enum VirtualMachineIPAllocationMethod {
  valueDynamic("Dynamic"),
  valueStatic("Static"),
  valueDisabled("Disabled");

  const VirtualMachineIPAllocationMethod(this.wireValue);
  final String wireValue;

  static VirtualMachineIPAllocationMethod fromValue(String value) {
    for (final item in VirtualMachineIPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown VirtualMachineIPAllocationMethod value: $value',
    );
  }
}
