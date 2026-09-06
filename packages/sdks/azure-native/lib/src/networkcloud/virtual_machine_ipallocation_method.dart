import 'package:pulumi/pulumi.dart' as pulumi;

/// The IP allocation mechanism for the virtual machine.
/// Dynamic and Static are only valid for l3Network which may also specify Disabled.
/// Otherwise, Disabled is the only permitted value.
enum VirtualMachineIPAllocationMethod implements pulumi.PulumiEnum<String> {
  valueDynamic("Dynamic"),
  valueStatic("Static"),
  valueDisabled("Disabled");

  const VirtualMachineIPAllocationMethod(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineIPAllocationMethod fromValue(String value) {
    for (final item in VirtualMachineIPAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineIPAllocationMethod value: $value');
  }
}
