import 'package:pulumi/pulumi.dart' as pulumi;

/// The severity level of this CIS benchmark check.
enum CisBenchmarkSeverityContaineranalysisV1alpha1 implements pulumi.PulumiEnum<String> {
  severityUnspecified("SEVERITY_UNSPECIFIED"),
  minimal("MINIMAL"),
  low("LOW"),
  medium("MEDIUM"),
  high("HIGH"),
  critical("CRITICAL");

  const CisBenchmarkSeverityContaineranalysisV1alpha1(this.wireValue);
  @override
  final String wireValue;

  static CisBenchmarkSeverityContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CisBenchmarkSeverityContaineranalysisV1alpha1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CisBenchmarkSeverityContaineranalysisV1alpha1 value: $value');
  }
}
