/// Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.
enum DnsKeySpecKeyType {
  keySigning("keySigning"),
  zoneSigning("zoneSigning");

  const DnsKeySpecKeyType(this.value);
  final String value;

  static DnsKeySpecKeyType fromValue(String value) {
    for (final item in DnsKeySpecKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsKeySpecKeyType value: $value');
  }
}

