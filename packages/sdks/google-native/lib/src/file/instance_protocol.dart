/// Immutable. The protocol indicates the access protocol for all shares in the instance. This field is immutable and it cannot be changed after the instance has been created. Default value: `NFS_V3`.
enum InstanceProtocol {
  fileProtocolUnspecified("FILE_PROTOCOL_UNSPECIFIED"),
  nfsV3("NFS_V3"),
  nfsV41("NFS_V4_1");

  const InstanceProtocol(this.wireValue);
  final String wireValue;

  static InstanceProtocol fromValue(String value) {
    for (final item in InstanceProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceProtocol value: $value');
  }
}

