/// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
enum VirtualMachineVirtioInterfaceType {
  valueModern("Modern"),
  valueTransitional("Transitional");

  const VirtualMachineVirtioInterfaceType(this.value);
  final String value;

  static VirtualMachineVirtioInterfaceType fromValue(String value) {
    for (final item in VirtualMachineVirtioInterfaceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineVirtioInterfaceType value: $value');
  }
}

