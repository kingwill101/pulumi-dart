/// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
enum MetricThresholdEvaluationMissingData {
  evaluationMissingDataUnspecified("EVALUATION_MISSING_DATA_UNSPECIFIED"),
  evaluationMissingDataInactive("EVALUATION_MISSING_DATA_INACTIVE"),
  evaluationMissingDataActive("EVALUATION_MISSING_DATA_ACTIVE"),
  evaluationMissingDataNoOp("EVALUATION_MISSING_DATA_NO_OP");

  const MetricThresholdEvaluationMissingData(this.wireValue);
  final String wireValue;

  static MetricThresholdEvaluationMissingData fromValue(String value) {
    for (final item in MetricThresholdEvaluationMissingData.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown MetricThresholdEvaluationMissingData value: $value',
    );
  }
}
