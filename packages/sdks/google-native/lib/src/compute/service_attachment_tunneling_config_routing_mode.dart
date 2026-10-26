import 'package:pulumi/pulumi.dart' as pulumi;

/// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
enum ServiceAttachmentTunnelingConfigRoutingMode implements pulumi.PulumiEnum<String> {
  packetInjection("PACKET_INJECTION"),
  standardRouting("STANDARD_ROUTING"),
  unspecifiedRoutingMode("UNSPECIFIED_ROUTING_MODE");

  const ServiceAttachmentTunnelingConfigRoutingMode(this.wireValue);
  @override
  final String wireValue;

  static ServiceAttachmentTunnelingConfigRoutingMode fromValue(String value) {
    for (final item in ServiceAttachmentTunnelingConfigRoutingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceAttachmentTunnelingConfigRoutingMode value: $value');
  }
}
