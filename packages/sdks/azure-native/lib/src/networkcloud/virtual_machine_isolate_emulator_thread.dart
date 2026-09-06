import 'package:pulumi/pulumi.dart' as pulumi;

/// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
enum VirtualMachineIsolateEmulatorThread implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const VirtualMachineIsolateEmulatorThread(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineIsolateEmulatorThread fromValue(String value) {
    for (final item in VirtualMachineIsolateEmulatorThread.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineIsolateEmulatorThread value: $value');
  }
}
