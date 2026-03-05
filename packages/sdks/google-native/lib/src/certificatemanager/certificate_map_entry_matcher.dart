/// A predefined matcher for particular cases, other than SNI selection.
enum CertificateMapEntryMatcher {
  matcherUnspecified("MATCHER_UNSPECIFIED"),
  primary("PRIMARY");

  const CertificateMapEntryMatcher(this.wireValue);
  final String wireValue;

  static CertificateMapEntryMatcher fromValue(String value) {
    for (final item in CertificateMapEntryMatcher.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateMapEntryMatcher value: $value');
  }
}

