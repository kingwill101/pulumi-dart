/// Required. Severity level to match.
enum SeverityOverrideSeverity {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  informational("INFORMATIONAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const SeverityOverrideSeverity(this.wireValue);
  final String wireValue;

  static SeverityOverrideSeverity fromValue(String value) {
    for (final item in SeverityOverrideSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SeverityOverrideSeverity value: $value');
  }
}

