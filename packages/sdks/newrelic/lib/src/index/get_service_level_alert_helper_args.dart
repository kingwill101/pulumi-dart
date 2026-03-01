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
    required pulumi.Output<String> alertType,
    pulumi.Output<int>? customEvaluationPeriod,
    pulumi.Output<double>? customToleratedBudgetConsumption,
    pulumi.Output<bool>? isBadEvents,
    required pulumi.Output<String> sliGuid,
    required pulumi.Output<int> sloPeriod,
    required pulumi.Output<double> sloTarget,
  }) :
      alertType = pulumi.Input.asInput<String>(alertType),
      customEvaluationPeriod = pulumi.Input.asOptionalInput<int>(customEvaluationPeriod),
      customToleratedBudgetConsumption = pulumi.Input.asOptionalInput<double>(customToleratedBudgetConsumption),
      isBadEvents = pulumi.Input.asOptionalInput<bool>(isBadEvents),
      sliGuid = pulumi.Input.asInput<String>(sliGuid),
      sloPeriod = pulumi.Input.asInput<int>(sloPeriod),
      sloTarget = pulumi.Input.asInput<double>(sloTarget);

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
      alertType: pulumi.Output.create<String>(map['alertType'] as String),
      customEvaluationPeriod: map['customEvaluationPeriod'] == null ? null : pulumi.Output.create<int>(map['customEvaluationPeriod'] as int),
      customToleratedBudgetConsumption: map['customToleratedBudgetConsumption'] == null ? null : pulumi.Output.create<double>(map['customToleratedBudgetConsumption'] as double),
      isBadEvents: map['isBadEvents'] == null ? null : pulumi.Output.create<bool>(map['isBadEvents'] as bool),
      sliGuid: pulumi.Output.create<String>(map['sliGuid'] as String),
      sloPeriod: pulumi.Output.create<int>(map['sloPeriod'] as int),
      sloTarget: pulumi.Output.create<double>(map['sloTarget'] as double),
    );
  }
}

