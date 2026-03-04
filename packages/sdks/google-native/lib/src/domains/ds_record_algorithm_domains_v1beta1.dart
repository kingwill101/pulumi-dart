/// The algorithm used to generate the referenced DNSKEY.
enum DsRecordAlgorithmDomainsV1beta1 {
  algorithmUnspecified("ALGORITHM_UNSPECIFIED"),
  rsamd5("RSAMD5"),
  dh("DH"),
  dsa("DSA"),
  ecc("ECC"),
  rsasha1("RSASHA1"),
  dsansec3sha1("DSANSEC3SHA1"),
  rsasha1nsec3sha1("RSASHA1NSEC3SHA1"),
  rsasha256("RSASHA256"),
  rsasha512("RSASHA512"),
  eccgost("ECCGOST"),
  ecdsap256sha256("ECDSAP256SHA256"),
  ecdsap384sha384("ECDSAP384SHA384"),
  ed25519("ED25519"),
  ed448("ED448"),
  indirect("INDIRECT"),
  privatedns("PRIVATEDNS"),
  privateoid("PRIVATEOID");

  const DsRecordAlgorithmDomainsV1beta1(this.wireValue);
  final String wireValue;

  static DsRecordAlgorithmDomainsV1beta1 fromValue(String value) {
    for (final item in DsRecordAlgorithmDomainsV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DsRecordAlgorithmDomainsV1beta1 value: $value',
    );
  }
}
