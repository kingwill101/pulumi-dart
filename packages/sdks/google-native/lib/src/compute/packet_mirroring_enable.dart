import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnable implements pulumi.PulumiEnum<String> {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnable(this.wireValue);
  @override
  final String wireValue;

  static PacketMirroringEnable fromValue(String value) {
    for (final item in PacketMirroringEnable.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringEnable value: $value');
  }
}
