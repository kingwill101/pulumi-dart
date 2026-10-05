import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
enum InterconnectAttachmentTypeComputeV1 implements pulumi.PulumiEnum<String> {
  dedicated("DEDICATED"),
  partner("PARTNER"),
  partnerProvider("PARTNER_PROVIDER");

  const InterconnectAttachmentTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static InterconnectAttachmentTypeComputeV1 fromValue(String value) {
    for (final item in InterconnectAttachmentTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectAttachmentTypeComputeV1 value: $value');
  }
}
