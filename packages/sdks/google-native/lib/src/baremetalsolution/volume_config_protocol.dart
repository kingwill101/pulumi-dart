import 'package:pulumi/pulumi.dart' as pulumi;

/// Volume protocol.
enum VolumeConfigProtocol implements pulumi.PulumiEnum<String> {
  protocolUnspecified("PROTOCOL_UNSPECIFIED"),
  protocolFc("PROTOCOL_FC"),
  protocolNfs("PROTOCOL_NFS");

  const VolumeConfigProtocol(this.wireValue);
  @override
  final String wireValue;

  static VolumeConfigProtocol fromValue(String value) {
    for (final item in VolumeConfigProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VolumeConfigProtocol value: $value');
  }
}
