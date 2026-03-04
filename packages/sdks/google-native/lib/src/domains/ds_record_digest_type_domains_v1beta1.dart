/// The hash function used to generate the digest of the referenced DNSKEY.
enum DsRecordDigestTypeDomainsV1beta1 {
  digestTypeUnspecified("DIGEST_TYPE_UNSPECIFIED"),
  sha1("SHA1"),
  sha256("SHA256"),
  gost3411("GOST3411"),
  sha384("SHA384");

  const DsRecordDigestTypeDomainsV1beta1(this.wireValue);
  final String wireValue;

  static DsRecordDigestTypeDomainsV1beta1 fromValue(String value) {
    for (final item in DsRecordDigestTypeDomainsV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DsRecordDigestTypeDomainsV1beta1 value: $value',
    );
  }
}
