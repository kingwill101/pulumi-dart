/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirectionComputeBeta {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirectionComputeBeta(this.wireValue);
  final String wireValue;

  static PacketMirroringFilterDirectionComputeBeta fromValue(String value) {
    for (final item in PacketMirroringFilterDirectionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PacketMirroringFilterDirectionComputeBeta value: $value',
    );
  }
}
