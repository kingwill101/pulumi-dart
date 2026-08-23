/// A valid event source type.
enum EventSource {
  assessments("Assessments"),
  assessmentsSnapshot("AssessmentsSnapshot"),
  subAssessments("SubAssessments"),
  subAssessmentsSnapshot("SubAssessmentsSnapshot"),
  alerts("Alerts"),
  secureScores("SecureScores"),
  secureScoresSnapshot("SecureScoresSnapshot"),
  secureScoreControls("SecureScoreControls"),
  secureScoreControlsSnapshot("SecureScoreControlsSnapshot"),
  regulatoryComplianceAssessment("RegulatoryComplianceAssessment"),
  regulatoryComplianceAssessmentSnapshot("RegulatoryComplianceAssessmentSnapshot"),
  attackPaths("AttackPaths"),
  attackPathsSnapshot("AttackPathsSnapshot");

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
