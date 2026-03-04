/// The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum NetworkInterfaceNicTypeComputeBeta {
  gvnic("GVNIC"),
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET");

  const NetworkInterfaceNicTypeComputeBeta(this.wireValue);
  final String wireValue;

  static NetworkInterfaceNicTypeComputeBeta fromValue(String value) {
    for (final item in NetworkInterfaceNicTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkInterfaceNicTypeComputeBeta value: $value',
    );
  }
}
