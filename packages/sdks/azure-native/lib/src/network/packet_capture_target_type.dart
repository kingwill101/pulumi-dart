import 'package:pulumi/pulumi.dart' as pulumi;

/// Target type of the resource provided.
enum PacketCaptureTargetType implements pulumi.PulumiEnum<String> {
  valueAzureVM("AzureVM"),
  valueAzureVMSS("AzureVMSS");

  const PacketCaptureTargetType(this.wireValue);
  @override
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
