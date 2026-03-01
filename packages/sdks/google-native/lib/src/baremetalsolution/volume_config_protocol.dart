/// Volume protocol.
enum VolumeConfigProtocol {
  protocolUnspecified("PROTOCOL_UNSPECIFIED"),
  protocolFc("PROTOCOL_FC"),
  protocolNfs("PROTOCOL_NFS");

  const VolumeConfigProtocol(this.value);
  final String value;

  static VolumeConfigProtocol fromValue(String value) {
    for (final item in VolumeConfigProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeConfigProtocol value: $value');
  }
}

