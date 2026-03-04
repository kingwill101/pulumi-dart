/// A valid event source type.
enum EventSource {
  valueAssessments("Assessments"),
  valueAssessmentsSnapshot("AssessmentsSnapshot"),
  valueSubAssessments("SubAssessments"),
  valueSubAssessmentsSnapshot("SubAssessmentsSnapshot"),
  valueAlerts("Alerts"),
  valueSecureScores("SecureScores"),
  valueSecureScoresSnapshot("SecureScoresSnapshot"),
  valueSecureScoreControls("SecureScoreControls"),
  valueSecureScoreControlsSnapshot("SecureScoreControlsSnapshot"),
  valueRegulatoryComplianceAssessment("RegulatoryComplianceAssessment"),
  valueRegulatoryComplianceAssessmentSnapshot(
    "RegulatoryComplianceAssessmentSnapshot",
  ),
  valueAttackPaths("AttackPaths"),
  valueAttackPathsSnapshot("AttackPathsSnapshot");

  const EventSource(this.wireValue);
  final String wireValue;

  static EventSource fromValue(String value) {
    for (final item in EventSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSource value: $value');
  }
}
