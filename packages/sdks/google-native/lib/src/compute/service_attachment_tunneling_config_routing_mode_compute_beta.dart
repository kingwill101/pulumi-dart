/// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
enum ServiceAttachmentTunnelingConfigRoutingModeComputeBeta {
  packetInjection("PACKET_INJECTION"),
  standardRouting("STANDARD_ROUTING"),
  unspecifiedRoutingMode("UNSPECIFIED_ROUTING_MODE");

  const ServiceAttachmentTunnelingConfigRoutingModeComputeBeta(this.wireValue);
  final String wireValue;

  static ServiceAttachmentTunnelingConfigRoutingModeComputeBeta fromValue(String value) {
    for (final item in ServiceAttachmentTunnelingConfigRoutingModeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceAttachmentTunnelingConfigRoutingModeComputeBeta value: $value');
  }
}

