/// Programmatic code for the status of the assessment
enum AssessmentStatusCode {
  valueHealthy("Healthy"),
  valueUnhealthy("Unhealthy"),
  valueNotApplicable("NotApplicable");

  const AssessmentStatusCode(this.wireValue);
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
