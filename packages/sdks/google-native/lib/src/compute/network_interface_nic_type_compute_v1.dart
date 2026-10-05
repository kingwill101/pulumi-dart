import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum NetworkInterfaceNicTypeComputeV1 implements pulumi.PulumiEnum<String> {
  gvnic("GVNIC"),
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET");

  const NetworkInterfaceNicTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceNicTypeComputeV1 fromValue(String value) {
    for (final item in NetworkInterfaceNicTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceNicTypeComputeV1 value: $value');
  }
}
