import 'package:pulumi/pulumi.dart' as pulumi;

enum NetworkInterfaceSubInterfaceIpAllocationMode implements pulumi.PulumiEnum<String> {
  allocateIp("ALLOCATE_IP"),
  doNotAllocateIp("DO_NOT_ALLOCATE_IP"),
  unspecified("UNSPECIFIED");

  const NetworkInterfaceSubInterfaceIpAllocationMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceSubInterfaceIpAllocationMode fromValue(String value) {
    for (final item in NetworkInterfaceSubInterfaceIpAllocationMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceSubInterfaceIpAllocationMode value: $value');
  }
}
