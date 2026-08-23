enum VersionInboundServicesItem {
  inboundServiceUnspecified("INBOUND_SERVICE_UNSPECIFIED"),
  inboundServiceMail("INBOUND_SERVICE_MAIL"),
  inboundServiceMailBounce("INBOUND_SERVICE_MAIL_BOUNCE"),
  inboundServiceXmppError("INBOUND_SERVICE_XMPP_ERROR"),
  inboundServiceXmppMessage("INBOUND_SERVICE_XMPP_MESSAGE"),
  inboundServiceXmppSubscribe("INBOUND_SERVICE_XMPP_SUBSCRIBE"),
  inboundServiceXmppPresence("INBOUND_SERVICE_XMPP_PRESENCE"),
  inboundServiceChannelPresence("INBOUND_SERVICE_CHANNEL_PRESENCE"),
  inboundServiceWarmup("INBOUND_SERVICE_WARMUP");

  const VersionInboundServicesItem(this.wireValue);
  final String wireValue;

  static VersionInboundServicesItem fromValue(String value) {
    for (final item in VersionInboundServicesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionInboundServicesItem value: $value');
  }
}
