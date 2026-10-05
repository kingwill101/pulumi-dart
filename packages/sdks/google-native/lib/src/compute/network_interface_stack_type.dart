import 'package:pulumi/pulumi.dart' as pulumi;

/// The stack type for this network interface. To assign only IPv4 addresses, use IPV4_ONLY. To assign both IPv4 and IPv6 addresses, use IPV4_IPV6. If not specified, IPV4_ONLY is used. This field can be both set at instance creation and update network interface operations.
enum NetworkInterfaceStackType implements pulumi.PulumiEnum<String> {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY"),
  ipv6Only("IPV6_ONLY");

  const NetworkInterfaceStackType(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceStackType fromValue(String value) {
    for (final item in NetworkInterfaceStackType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceStackType value: $value');
  }
}
