enum VersionInboundServicesItemAppengineV1beta {
  inboundServiceUnspecified("INBOUND_SERVICE_UNSPECIFIED"),
  inboundServiceMail("INBOUND_SERVICE_MAIL"),
  inboundServiceMailBounce("INBOUND_SERVICE_MAIL_BOUNCE"),
  inboundServiceXmppError("INBOUND_SERVICE_XMPP_ERROR"),
  inboundServiceXmppMessage("INBOUND_SERVICE_XMPP_MESSAGE"),
  inboundServiceXmppSubscribe("INBOUND_SERVICE_XMPP_SUBSCRIBE"),
  inboundServiceXmppPresence("INBOUND_SERVICE_XMPP_PRESENCE"),
  inboundServiceChannelPresence("INBOUND_SERVICE_CHANNEL_PRESENCE"),
  inboundServiceWarmup("INBOUND_SERVICE_WARMUP");

  const VersionInboundServicesItemAppengineV1beta(this.value);
  final String value;

  static VersionInboundServicesItemAppengineV1beta fromValue(String value) {
    for (final item in VersionInboundServicesItemAppengineV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionInboundServicesItemAppengineV1beta value: $value');
  }
}

