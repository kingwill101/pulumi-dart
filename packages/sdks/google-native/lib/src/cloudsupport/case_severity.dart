/// REMOVED. The severity of this case. Use priority instead.
enum CaseSeverity {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  s0("S0"),
  s1("S1"),
  s2("S2"),
  s3("S3"),
  s4("S4");

  const CaseSeverity(this.wireValue);
  final String wireValue;

  static CaseSeverity fromValue(String value) {
    for (final item in CaseSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CaseSeverity value: $value');
  }
}
