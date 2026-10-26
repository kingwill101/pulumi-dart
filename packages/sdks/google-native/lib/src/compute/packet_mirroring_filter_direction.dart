import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirection implements pulumi.PulumiEnum<String> {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirection(this.wireValue);
  @override
  final String wireValue;

  static PacketMirroringFilterDirection fromValue(String value) {
    for (final item in PacketMirroringFilterDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringFilterDirection value: $value');
  }
}
