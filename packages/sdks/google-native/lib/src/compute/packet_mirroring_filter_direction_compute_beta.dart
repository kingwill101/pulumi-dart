import 'package:pulumi/pulumi.dart' as pulumi;

/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirectionComputeBeta implements pulumi.PulumiEnum<String> {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirectionComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static PacketMirroringFilterDirectionComputeBeta fromValue(String value) {
    for (final item in PacketMirroringFilterDirectionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringFilterDirectionComputeBeta value: $value');
  }
}
