/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirectionComputeV1 {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirectionComputeV1(this.wireValue);
  final String wireValue;

  static PacketMirroringFilterDirectionComputeV1 fromValue(String value) {
    for (final item in PacketMirroringFilterDirectionComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringFilterDirectionComputeV1 value: $value');
  }
}
