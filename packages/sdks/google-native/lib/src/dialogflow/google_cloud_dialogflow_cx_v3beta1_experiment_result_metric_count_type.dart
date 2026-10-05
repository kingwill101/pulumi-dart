import 'package:pulumi/pulumi.dart' as pulumi;

/// Count-based metric type. Only one of type or count_type is specified in each Metric.
enum GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType implements pulumi.PulumiEnum<String> {
  countTypeUnspecified("COUNT_TYPE_UNSPECIFIED"),
  totalNoMatchCount("TOTAL_NO_MATCH_COUNT"),
  totalTurnCount("TOTAL_TURN_COUNT"),
  averageTurnCount("AVERAGE_TURN_COUNT");

  const GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType(this.wireValue);
  @override
  final String wireValue;

  static GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowCxV3beta1ExperimentResultMetricCountType value: $value');
  }
}
