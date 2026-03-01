/// Severity of issue. Required.
enum TestIssueSeverity {
  unspecifiedSeverity("unspecifiedSeverity"),
  info("info"),
  suggestion("suggestion"),
  warning("warning"),
  severe("severe");

  const TestIssueSeverity(this.value);
  final String value;

  static TestIssueSeverity fromValue(String value) {
    for (final item in TestIssueSeverity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestIssueSeverity value: $value');
  }
}

