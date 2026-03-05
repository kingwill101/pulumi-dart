/// Specifies the desired state of virtual machines in the pool.
enum VirtualMachineState {
  running("Running"),
  deallocated("Deallocated");

  const VirtualMachineState(this.wireValue);
  final String wireValue;

  static VirtualMachineState fromValue(String value) {
    for (final item in VirtualMachineState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineState value: $value');
  }
}

