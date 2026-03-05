/// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
enum DnsKeySpecKeyTypeDnsV1beta2 {
  keySigning("keySigning"),
  zoneSigning("zoneSigning");

  const DnsKeySpecKeyTypeDnsV1beta2(this.wireValue);
  final String wireValue;

  static DnsKeySpecKeyTypeDnsV1beta2 fromValue(String value) {
    for (final item in DnsKeySpecKeyTypeDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsKeySpecKeyTypeDnsV1beta2 value: $value');
  }
}

