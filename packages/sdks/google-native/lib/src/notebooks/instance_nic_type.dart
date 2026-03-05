/// Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
enum InstanceNicType {
  unspecifiedNicType("UNSPECIFIED_NIC_TYPE"),
  virtioNet("VIRTIO_NET"),
  gvnic("GVNIC");

  const InstanceNicType(this.wireValue);
  final String wireValue;

  static InstanceNicType fromValue(String value) {
    for (final item in InstanceNicType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceNicType value: $value');
  }
}

