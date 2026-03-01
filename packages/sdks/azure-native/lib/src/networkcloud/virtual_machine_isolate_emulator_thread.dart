/// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
enum VirtualMachineIsolateEmulatorThread {
  valueTrue("True"),
  valueFalse("False");

  const VirtualMachineIsolateEmulatorThread(this.value);
  final String value;

  static VirtualMachineIsolateEmulatorThread fromValue(String value) {
    for (final item in VirtualMachineIsolateEmulatorThread.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineIsolateEmulatorThread value: $value');
  }
}

