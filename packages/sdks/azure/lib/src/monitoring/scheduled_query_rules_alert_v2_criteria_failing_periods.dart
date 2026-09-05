// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryRulesAlertV2CriteriaFailingPeriods {
  /// Specifies the number of violations to trigger an alert. Should be smaller or equal to `numberOfEvaluationPeriods`. Possible value is integer between 1 and 6.
  final pulumi.Input<int> minimumFailingPeriodsToTriggerAlert;
  /// Specifies the number of aggregated look-back points. The look-back time window is calculated based on the aggregation granularity `windowDuration` and the selected number of aggregated points. Possible value is integer between 1 and 6.
  ///
  /// &gt; **Note:** The query look back which is `windowDuration`*`numberOfEvaluationPeriods` cannot exceed 48 hours.
  ///
  /// &gt; **Note:** `numberOfEvaluationPeriods` must be `1` for queries that do not project timestamp column
  final pulumi.Input<int> numberOfEvaluationPeriods;

  /// Creates a new [ScheduledQueryRulesAlertV2CriteriaFailingPeriods].
  /// [minimumFailingPeriodsToTriggerAlert] Specifies the number of violations to trigger an alert. Should be smaller or equal to `numberOfEvaluationPeriods`. Possible value is integer between 1 and 6.
  /// [numberOfEvaluationPeriods] Specifies the number of aggregated look-back points. The look-back time window is calculated based on the aggregation granularity `windowDuration` and the selected number of aggregated points. Possible value is integer between 1 and 6.
  const ScheduledQueryRulesAlertV2CriteriaFailingPeriods({
    required this.minimumFailingPeriodsToTriggerAlert,
    required this.numberOfEvaluationPeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumFailingPeriodsToTriggerAlert': minimumFailingPeriodsToTriggerAlert,
      'numberOfEvaluationPeriods': numberOfEvaluationPeriods,
    };
  }

  factory ScheduledQueryRulesAlertV2CriteriaFailingPeriods.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesAlertV2CriteriaFailingPeriods(
      minimumFailingPeriodsToTriggerAlert: pulumi.Input.fromValue((map['minimumFailingPeriodsToTriggerAlert'] as num).toInt()),
      numberOfEvaluationPeriods: pulumi.Input.fromValue((map['numberOfEvaluationPeriods'] as num).toInt()),
    );
  }
}
