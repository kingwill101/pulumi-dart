import 'package:pulumi/pulumi.dart' as pulumi;

/// Selects the boot method for the virtual machine.
enum VirtualMachineBootMethod implements pulumi.PulumiEnum<String> {
  valueUEFI("UEFI"),
  valueBIOS("BIOS");

  const VirtualMachineBootMethod(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineBootMethod fromValue(String value) {
    for (final item in VirtualMachineBootMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineBootMethod value: $value');
  }
}
