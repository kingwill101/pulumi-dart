import 'package:pulumi/pulumi.dart' as pulumi;

/// The indicator of whether the hint is a hard or soft requirement during scheduling.
enum VirtualMachineSchedulingExecution implements pulumi.PulumiEnum<String> {
  valueHard("Hard"),
  valueSoft("Soft");

  const VirtualMachineSchedulingExecution(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineSchedulingExecution fromValue(String value) {
    for (final item in VirtualMachineSchedulingExecution.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineSchedulingExecution value: $value');
  }
}
