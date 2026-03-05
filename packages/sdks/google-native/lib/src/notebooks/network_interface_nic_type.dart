/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum NetworkInterfaceNicType {
  nicTypeUnspecified("NIC_TYPE_UNSPECIFIED"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const NetworkInterfaceNicType(this.wireValue);
  final String wireValue;

  static NetworkInterfaceNicType fromValue(String value) {
    for (final item in NetworkInterfaceNicType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceNicType value: $value');
  }
}

