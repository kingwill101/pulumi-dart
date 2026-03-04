// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_service_level_alert_helper_get_service_level_alert_helper_args_doc}
/// Arguments for getServiceLevelAlertHelper.
/// {@endtemplate}
/// {@macro pulumi_index_get_service_level_alert_helper_get_service_level_alert_helper_args_doc}
class GetServiceLevelAlertHelperArgs {
  /// The type of alert we want to set. Valid values are:
  final pulumi.Input<String> alertType;

  /// Aggregation window taken into consideration in seconds. Mandatory if `alert_type` is `custom`.
  final pulumi.Input<int>? customEvaluationPeriod;

  /// How much budget you tolerate to consume during the custom evaluation period, valid values between `0` and `100`. Mandatory if `alert_type` is `custom`.
  final pulumi.Input<double>? customToleratedBudgetConsumption;

  /// If the SLI is defined using bad events. Defaults to `false`
  final pulumi.Input<bool>? isBadEvents;

  /// The guid of the sli we want to set the alert on.
  final pulumi.Input<String> sliGuid;

  /// The time window of the Service Level Objective in days. Valid values are `1`, `7` and `28`.
  final pulumi.Input<int> sloPeriod;

  /// The target of the Service Level Objective, valid values between `0` and `100`.
  final pulumi.Input<double> sloTarget;

  /// Creates a new [GetServiceLevelAlertHelperArgs].
  /// [alertType] The type of alert we want to set. Valid values are:
  /// [customEvaluationPeriod] Aggregation window taken into consideration in seconds. Mandatory if `alert_type` is `custom`.
  /// [customToleratedBudgetConsumption] How much budget you tolerate to consume during the custom evaluation period, valid values between `0` and `100`. Mandatory if `alert_type` is `custom`.
  /// [isBadEvents] If the SLI is defined using bad events. Defaults to `false`
  /// [sliGuid] The guid of the sli we want to set the alert on.
  /// [sloPeriod] The time window of the Service Level Objective in days. Valid values are `1`, `7` and `28`.
  /// [sloTarget] The target of the Service Level Objective, valid values between `0` and `100`.
  GetServiceLevelAlertHelperArgs({
    required this.alertType,
    this.customEvaluationPeriod,
    this.customToleratedBudgetConsumption,
    this.isBadEvents,
    required this.sliGuid,
    required this.sloPeriod,
    required this.sloTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertType': alertType,
      'customEvaluationPeriod': ?customEvaluationPeriod,
      'customToleratedBudgetConsumption': ?customToleratedBudgetConsumption,
      'isBadEvents': ?isBadEvents,
      'sliGuid': sliGuid,
      'sloPeriod': sloPeriod,
      'sloTarget': sloTarget,
    };
  }

  factory GetServiceLevelAlertHelperArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLevelAlertHelperArgs(
      alertType: pulumi.Input.fromValue(map['alertType'] as String),
      customEvaluationPeriod: (() {
        final guardedValue = map['customEvaluationPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      customToleratedBudgetConsumption: (() {
        final guardedValue = map['customToleratedBudgetConsumption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      isBadEvents: (() {
        final guardedValue = map['isBadEvents'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sliGuid: pulumi.Input.fromValue(map['sliGuid'] as String),
      sloPeriod: pulumi.Input.fromValue(map['sloPeriod'] as int),
      sloTarget: pulumi.Input.fromValue(map['sloTarget'] as double),
    );
  }
}
