/// String mnemonic specifying the DNSSEC algorithm of this key.
enum DnsKeySpecAlgorithm {
  rsasha1("rsasha1"),
  rsasha256("rsasha256"),
  rsasha512("rsasha512"),
  ecdsap256sha256("ecdsap256sha256"),
  ecdsap384sha384("ecdsap384sha384");

  const DnsKeySpecAlgorithm(this.wireValue);
  final String wireValue;

  static DnsKeySpecAlgorithm fromValue(String value) {
    for (final item in DnsKeySpecAlgorithm.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsKeySpecAlgorithm value: $value');
  }
}
