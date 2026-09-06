import 'package:pulumi/pulumi.dart' as pulumi;

/// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
enum VirtualMachineVirtioInterfaceType implements pulumi.PulumiEnum<String> {
  valueModern("Modern"),
  valueTransitional("Transitional");

  const VirtualMachineVirtioInterfaceType(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineVirtioInterfaceType fromValue(String value) {
    for (final item in VirtualMachineVirtioInterfaceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineVirtioInterfaceType value: $value');
  }
}
