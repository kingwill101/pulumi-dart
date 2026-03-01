/// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
enum ServiceAttachmentTunnelingConfigRoutingMode {
  packetInjection("PACKET_INJECTION"),
  standardRouting("STANDARD_ROUTING"),
  unspecifiedRoutingMode("UNSPECIFIED_ROUTING_MODE");

  const ServiceAttachmentTunnelingConfigRoutingMode(this.value);
  final String value;

  static ServiceAttachmentTunnelingConfigRoutingMode fromValue(String value) {
    for (final item in ServiceAttachmentTunnelingConfigRoutingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceAttachmentTunnelingConfigRoutingMode value: $value');
  }
}

