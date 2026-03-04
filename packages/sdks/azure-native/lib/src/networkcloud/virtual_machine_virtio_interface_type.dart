/// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
enum VirtualMachineVirtioInterfaceType {
  valueModern("Modern"),
  valueTransitional("Transitional");

  const VirtualMachineVirtioInterfaceType(this.wireValue);
  final String wireValue;

  static VirtualMachineVirtioInterfaceType fromValue(String value) {
    for (final item in VirtualMachineVirtioInterfaceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown VirtualMachineVirtioInterfaceType value: $value',
    );
  }
}
