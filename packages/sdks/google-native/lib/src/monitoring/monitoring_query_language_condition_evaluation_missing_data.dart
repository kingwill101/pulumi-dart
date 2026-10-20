import 'package:pulumi/pulumi.dart' as pulumi;

/// A condition control that determines how metric-threshold conditions are evaluated when data stops arriving.
enum MonitoringQueryLanguageConditionEvaluationMissingData implements pulumi.PulumiEnum<String> {
  evaluationMissingDataUnspecified("EVALUATION_MISSING_DATA_UNSPECIFIED"),
  evaluationMissingDataInactive("EVALUATION_MISSING_DATA_INACTIVE"),
  evaluationMissingDataActive("EVALUATION_MISSING_DATA_ACTIVE"),
  evaluationMissingDataNoOp("EVALUATION_MISSING_DATA_NO_OP");

  const MonitoringQueryLanguageConditionEvaluationMissingData(this.wireValue);
  @override
  final String wireValue;

  static MonitoringQueryLanguageConditionEvaluationMissingData fromValue(String value) {
    for (final item in MonitoringQueryLanguageConditionEvaluationMissingData.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringQueryLanguageConditionEvaluationMissingData value: $value');
  }
}
