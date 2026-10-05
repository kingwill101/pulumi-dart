import 'package:pulumi/pulumi.dart' as pulumi;

enum CisBenchmarkSeverity implements pulumi.PulumiEnum<String> {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  minimal("MINIMAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const CisBenchmarkSeverity(this.wireValue);
  @override
  final String wireValue;

  static CisBenchmarkSeverity fromValue(String value) {
    for (final item in CisBenchmarkSeverity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CisBenchmarkSeverity value: $value');
  }
}
