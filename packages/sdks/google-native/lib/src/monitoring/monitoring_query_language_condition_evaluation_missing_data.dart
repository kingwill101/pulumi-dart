/// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
enum MonitoringQueryLanguageConditionEvaluationMissingData {
  evaluationMissingDataUnspecified("EVALUATION_MISSING_DATA_UNSPECIFIED"),
  evaluationMissingDataInactive("EVALUATION_MISSING_DATA_INACTIVE"),
  evaluationMissingDataActive("EVALUATION_MISSING_DATA_ACTIVE"),
  evaluationMissingDataNoOp("EVALUATION_MISSING_DATA_NO_OP");

  const MonitoringQueryLanguageConditionEvaluationMissingData(this.value);
  final String value;

  static MonitoringQueryLanguageConditionEvaluationMissingData fromValue(String value) {
    for (final item in MonitoringQueryLanguageConditionEvaluationMissingData.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringQueryLanguageConditionEvaluationMissingData value: $value');
  }
}

