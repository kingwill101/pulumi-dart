import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the device model to use.
enum VirtualMachineDeviceModelType implements pulumi.PulumiEnum<String> {
  t1("T1"),
  t2("T2"),
  t3("T3");

  const VirtualMachineDeviceModelType(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineDeviceModelType fromValue(String value) {
    for (final item in VirtualMachineDeviceModelType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineDeviceModelType value: $value');
  }
}
