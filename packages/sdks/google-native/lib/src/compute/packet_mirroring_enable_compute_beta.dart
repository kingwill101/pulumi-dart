/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnableComputeBeta {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnableComputeBeta(this.wireValue);
  final String wireValue;

  static PacketMirroringEnableComputeBeta fromValue(String value) {
    for (final item in PacketMirroringEnableComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PacketMirroringEnableComputeBeta value: $value',
    );
  }
}
