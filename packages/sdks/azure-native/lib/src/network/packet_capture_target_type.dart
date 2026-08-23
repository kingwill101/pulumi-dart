/// Target type of the resource provided.
enum PacketCaptureTargetType {
  valueAzureVM("AzureVM"),
  valueAzureVMSS("AzureVMSS");

  const PacketCaptureTargetType(this.wireValue);
  final String wireValue;

  static PacketCaptureTargetType fromValue(String value) {
    for (final item in PacketCaptureTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketCaptureTargetType value: $value');
  }
}
