/// The indicator of whether the hint is a hard or soft requirement during scheduling.
enum VirtualMachineSchedulingExecution {
  valueHard("Hard"),
  valueSoft("Soft");

  const VirtualMachineSchedulingExecution(this.value);
  final String value;

  static VirtualMachineSchedulingExecution fromValue(String value) {
    for (final item in VirtualMachineSchedulingExecution.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineSchedulingExecution value: $value');
  }
}

