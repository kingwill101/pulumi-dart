/// Immutable. The scope of the certificate.
enum CertificateScope {
  default_("DEFAULT"),
  edgeCache("EDGE_CACHE"),
  allRegions("ALL_REGIONS");

  const CertificateScope(this.value);
  final String value;

  static CertificateScope fromValue(String value) {
    for (final item in CertificateScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateScope value: $value');
  }
}

