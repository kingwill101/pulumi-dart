import 'package:pulumi/pulumi.dart' as pulumi;

/// Severity of issue. Required.
enum TestIssueSeverity implements pulumi.PulumiEnum<String> {
  unspecifiedSeverity("unspecifiedSeverity"),
  info("info"),
  suggestion("suggestion"),
  warning("warning"),
  severe("severe");

  const TestIssueSeverity(this.wireValue);
  @override
  final String wireValue;

  static TestIssueSeverity fromValue(String value) {
    for (final item in TestIssueSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestIssueSeverity value: $value');
  }
}
