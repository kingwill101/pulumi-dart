/// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
enum VirtualMachineIsolateEmulatorThread {
  valueTrue("True"),
  valueFalse("False");

  const VirtualMachineIsolateEmulatorThread(this.wireValue);
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
