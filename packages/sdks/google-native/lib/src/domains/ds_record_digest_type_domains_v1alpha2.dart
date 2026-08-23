/// The hash function used to generate the digest of the referenced DNSKEY.
enum DsRecordDigestTypeDomainsV1alpha2 {
  digestTypeUnspecified("DIGEST_TYPE_UNSPECIFIED"),
  sha1("SHA1"),
  sha256("SHA256"),
  gost3411("GOST3411"),
  sha384("SHA384");

  const DsRecordDigestTypeDomainsV1alpha2(this.wireValue);
  final String wireValue;

  static DsRecordDigestTypeDomainsV1alpha2 fromValue(String value) {
    for (final item in DsRecordDigestTypeDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DsRecordDigestTypeDomainsV1alpha2 value: $value');
  }
}
