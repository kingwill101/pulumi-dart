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
  SqlPoolWorkloadGroupArgs({
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
      importance: map['importance'] == null ? null : (map['importance'] as String).input(),
      maxResourcePercent: (map['maxResourcePercent'] as int).input(),
      maxResourcePercentPerRequest: map['maxResourcePercentPerRequest'] == null ? null : (map['maxResourcePercentPerRequest'] as double).input(),
      minResourcePercent: (map['minResourcePercent'] as int).input(),
      minResourcePercentPerRequest: map['minResourcePercentPerRequest'] == null ? null : (map['minResourcePercentPerRequest'] as double).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      queryExecutionTimeoutInSeconds: map['queryExecutionTimeoutInSeconds'] == null ? null : (map['queryExecutionTimeoutInSeconds'] as int).input(),
      sqlPoolId: (map['sqlPoolId'] as String).input(),
    );
  }
}

