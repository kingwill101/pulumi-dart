/// Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option.
enum InterconnectAttachmentEncryption {
  ipsec("IPSEC"),
  none("NONE");

  const InterconnectAttachmentEncryption(this.wireValue);
  final String wireValue;

  static InterconnectAttachmentEncryption fromValue(String value) {
    for (final item in InterconnectAttachmentEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectAttachmentEncryption value: $value');
  }
}
