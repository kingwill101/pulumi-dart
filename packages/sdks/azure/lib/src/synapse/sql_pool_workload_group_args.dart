// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_workload_group_sql_pool_workload_group_args_doc}
/// The set of arguments for SqlPoolWorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_workload_group_sql_pool_workload_group_args_doc}
class SqlPoolWorkloadGroupArgs {
  /// The workload group importance level. Defaults to `normal`.
  final pulumi.Input<String>? importance;
  /// The workload group cap percentage resource.
  final pulumi.Input<int> maxResourcePercent;
  /// The workload group request maximum grant percentage. Defaults to `3`.
  final pulumi.Input<double>? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final pulumi.Input<int> minResourcePercent;
  /// The workload group request minimum grant percentage.
  final pulumi.Input<double>? minResourcePercentPerRequest;
  /// The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  final pulumi.Input<String>? name;
  /// The workload group query execution timeout.
  final pulumi.Input<int>? queryExecutionTimeoutInSeconds;
  /// The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  final pulumi.Input<String> sqlPoolId;

  /// Creates a new [SqlPoolWorkloadGroupArgs].
  /// [importance] The workload group importance level. Defaults to `normal`.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage. Defaults to `3`.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [name] The name which should be used for this Synapse SQL Pool Workload Group. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  /// [queryExecutionTimeoutInSeconds] The workload group query execution timeout.
  /// [sqlPoolId] The ID of the Synapse SQL Pool. Changing this forces a new Synapse SQL Pool Workload Group to be created.
  const SqlPoolWorkloadGroupArgs({
    this.importance,
    required this.maxResourcePercent,
    this.maxResourcePercentPerRequest,
    required this.minResourcePercent,
    this.minResourcePercentPerRequest,
    this.name,
    this.queryExecutionTimeoutInSeconds,
    required this.sqlPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importance': ?importance,
      'maxResourcePercent': maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': minResourcePercent,
      'minResourcePercentPerRequest': ?minResourcePercentPerRequest,
      'name': ?name,
      'queryExecutionTimeoutInSeconds': ?queryExecutionTimeoutInSeconds,
      'sqlPoolId': sqlPoolId,
    };
  }

  factory SqlPoolWorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolWorkloadGroupArgs(
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxResourcePercent: pulumi.Input.fromValue(map['maxResourcePercent'] as int),
      maxResourcePercentPerRequest: (() { final guardedValue = map['maxResourcePercentPerRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      minResourcePercent: pulumi.Input.fromValue(map['minResourcePercent'] as int),
      minResourcePercentPerRequest: (() { final guardedValue = map['minResourcePercentPerRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryExecutionTimeoutInSeconds: (() { final guardedValue = map['queryExecutionTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlPoolId: pulumi.Input.fromValue(map['sqlPoolId'] as String),
    );
  }
}
