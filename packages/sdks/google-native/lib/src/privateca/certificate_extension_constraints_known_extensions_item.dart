enum CertificateExtensionConstraintsKnownExtensionsItem {
  knownCertificateExtensionUnspecified(
    "KNOWN_CERTIFICATE_EXTENSION_UNSPECIFIED",
  ),
  baseKeyUsage("BASE_KEY_USAGE"),
  extendedKeyUsage("EXTENDED_KEY_USAGE"),
  caOptions("CA_OPTIONS"),
  policyIds("POLICY_IDS"),
  aiaOcspServers("AIA_OCSP_SERVERS"),
  nameConstraints("NAME_CONSTRAINTS");

  const CertificateExtensionConstraintsKnownExtensionsItem(this.wireValue);
  final String wireValue;

  static CertificateExtensionConstraintsKnownExtensionsItem fromValue(
    String value,
  ) {
    for (final item
        in CertificateExtensionConstraintsKnownExtensionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CertificateExtensionConstraintsKnownExtensionsItem value: $value',
    );
  }
}
