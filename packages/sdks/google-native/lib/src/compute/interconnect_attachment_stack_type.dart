import 'package:pulumi/pulumi.dart' as pulumi;

/// The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
enum InterconnectAttachmentStackType implements pulumi.PulumiEnum<String> {
  ipv4Ipv6("IPV4_IPV6"),
  ipv4Only("IPV4_ONLY");

  const InterconnectAttachmentStackType(this.wireValue);
  @override
  final String wireValue;

  static InterconnectAttachmentStackType fromValue(String value) {
    for (final item in InterconnectAttachmentStackType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectAttachmentStackType value: $value');
  }
}
