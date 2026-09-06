import 'package:pulumi/pulumi.dart' as pulumi;

/// Programmatic code for the status of the assessment
enum AssessmentStatusCode implements pulumi.PulumiEnum<String> {
  valueHealthy("Healthy"),
  valueUnhealthy("Unhealthy"),
  valueNotApplicable("NotApplicable");

  const AssessmentStatusCode(this.wireValue);
  @override
  final String wireValue;

  static AssessmentStatusCode fromValue(String value) {
    for (final item in AssessmentStatusCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssessmentStatusCode value: $value');
  }
}
