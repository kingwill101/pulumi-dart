/// The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
enum InterconnectAttachmentStackTypeComputeV1 {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY");

  const InterconnectAttachmentStackTypeComputeV1(this.wireValue);
  final String wireValue;

  static InterconnectAttachmentStackTypeComputeV1 fromValue(String value) {
    for (final item in InterconnectAttachmentStackTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectAttachmentStackTypeComputeV1 value: $value',
    );
  }
}
