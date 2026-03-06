// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServiceLevelAlertHelper.
class GetServiceLevelAlertHelperResult {
  final String alertType;
  final int? customEvaluationPeriod;
  final double? customToleratedBudgetConsumption;
  /// (Computed) For non `custom` alert_type, this is the recommended for that type of alert. For `custom` alert_type it has the same value as `custom_evaluation_period`.
  final int evaluationPeriod;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isBadEvents;
  /// (Computed) The nrql query for the selected type of alert.
  final String nrql;
  final String sliGuid;
  final int sloPeriod;
  final double sloTarget;
  /// (Computed) The computed threshold given the provided arguments.
  final double threshold;
  /// (Computed) For non `custom` alert_type, this is the recommended for that type of alert. For `custom` alert_type it has the same value as `custom_tolerated_budget_consumption`.
  final double toleratedBudgetConsumption;

  /// Creates a new [GetServiceLevelAlertHelperResult].
  /// [alertType] Required.
  /// [customEvaluationPeriod] Optional.
  /// [customToleratedBudgetConsumption] Optional.
  /// [evaluationPeriod] (Computed) For non `custom` alert_type, this is the recommended for that type of alert. For `custom` alert_type it has the same value as `custom_evaluation_period`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isBadEvents] Optional.
  /// [nrql] (Computed) The nrql query for the selected type of alert.
  /// [sliGuid] Required.
  /// [sloPeriod] Required.
  /// [sloTarget] Required.
  /// [threshold] (Computed) The computed threshold given the provided arguments.
  /// [toleratedBudgetConsumption] (Computed) For non `custom` alert_type, this is the recommended for that type of alert. For `custom` alert_type it has the same value as `custom_tolerated_budget_consumption`.
  const GetServiceLevelAlertHelperResult({
    required this.alertType,
    this.customEvaluationPeriod,
    this.customToleratedBudgetConsumption,
    required this.evaluationPeriod,
    required this.id,
    this.isBadEvents,
    required this.nrql,
    required this.sliGuid,
    required this.sloPeriod,
    required this.sloTarget,
    required this.threshold,
    required this.toleratedBudgetConsumption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertType': alertType,
      'customEvaluationPeriod': ?customEvaluationPeriod,
      'customToleratedBudgetConsumption': ?customToleratedBudgetConsumption,
      'evaluationPeriod': evaluationPeriod,
      'id': id,
      'isBadEvents': ?isBadEvents,
      'nrql': nrql,
      'sliGuid': sliGuid,
      'sloPeriod': sloPeriod,
      'sloTarget': sloTarget,
      'threshold': threshold,
      'toleratedBudgetConsumption': toleratedBudgetConsumption,
    };
  }

  factory GetServiceLevelAlertHelperResult.fromMap(Map<String, dynamic> map) {
    return GetServiceLevelAlertHelperResult(
      alertType: map['alertType'] as String,
      customEvaluationPeriod: (() { final guardedValue = map['customEvaluationPeriod']; if (guardedValue == null) return null; return guardedValue as int; })(),
      customToleratedBudgetConsumption: (() { final guardedValue = map['customToleratedBudgetConsumption']; if (guardedValue == null) return null; return guardedValue as double; })(),
      evaluationPeriod: map['evaluationPeriod'] as int,
      id: map['id'] as String,
      isBadEvents: (() { final guardedValue = map['isBadEvents']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nrql: map['nrql'] as String,
      sliGuid: map['sliGuid'] as String,
      sloPeriod: map['sloPeriod'] as int,
      sloTarget: map['sloTarget'] as double,
      threshold: map['threshold'] as double,
      toleratedBudgetConsumption: map['toleratedBudgetConsumption'] as double,
    );
  }
}

