/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum VirtualMachineConfigNicType {
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const VirtualMachineConfigNicType(this.wireValue);
  final String wireValue;

  static VirtualMachineConfigNicType fromValue(String value) {
    for (final item in VirtualMachineConfigNicType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineConfigNicType value: $value');
  }
}
