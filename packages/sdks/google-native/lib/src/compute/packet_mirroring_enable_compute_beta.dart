import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnableComputeBeta implements pulumi.PulumiEnum<String> {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnableComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static PacketMirroringEnableComputeBeta fromValue(String value) {
    for (final item in PacketMirroringEnableComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringEnableComputeBeta value: $value');
  }
}
