/// Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s
enum InterconnectAttachmentBandwidth {
  bps100m("BPS_100M"),
  bps10g("BPS_10G"),
  bps1g("BPS_1G"),
  bps200m("BPS_200M"),
  bps20g("BPS_20G"),
  bps2g("BPS_2G"),
  bps300m("BPS_300M"),
  bps400m("BPS_400M"),
  bps500m("BPS_500M"),
  bps50g("BPS_50G"),
  bps50m("BPS_50M"),
  bps5g("BPS_5G");

  const InterconnectAttachmentBandwidth(this.wireValue);
  final String wireValue;

  static InterconnectAttachmentBandwidth fromValue(String value) {
    for (final item in InterconnectAttachmentBandwidth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectAttachmentBandwidth value: $value',
    );
  }
}
