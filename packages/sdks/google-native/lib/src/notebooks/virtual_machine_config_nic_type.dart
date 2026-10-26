import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum VirtualMachineConfigNicType implements pulumi.PulumiEnum<String> {
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const VirtualMachineConfigNicType(this.wireValue);
  @override
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
