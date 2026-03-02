// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_workload_group_args_doc}
/// The set of arguments for SqlPoolWorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_workload_group_args_doc}
class SqlPoolWorkloadGroupArgs {
  /// The workload group importance level.
  final pulumi.Input<String>? importance;
  /// The workload group cap percentage resource.
  final pulumi.Input<int> maxResourcePercent;
  /// The workload group request maximum grant percentage.
  final pulumi.Input<double>? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final pulumi.Input<int> minResourcePercent;
  /// The workload group request minimum grant percentage.
  final pulumi.Input<double> minResourcePercentPerRequest;
  /// The workload group query execution timeout.
  final pulumi.Input<int>? queryExecutionTimeout;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workload group.
  final pulumi.Input<String>? workloadGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SqlPoolWorkloadGroupArgs].
  /// [importance] The workload group importance level.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [queryExecutionTimeout] The workload group query execution timeout.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [workloadGroupName] The name of the workload group.
  /// [workspaceName] The name of the workspace.
  SqlPoolWorkloadGroupArgs({
    this.importance,
    required this.maxResourcePercent,
    this.maxResourcePercentPerRequest,
    required this.minResourcePercent,
    required this.minResourcePercentPerRequest,
    this.queryExecutionTimeout,
    required this.resourceGroupName,
    required this.sqlPoolName,
    this.workloadGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importance': ?importance,
      'maxResourcePercent': maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': minResourcePercent,
      'minResourcePercentPerRequest': minResourcePercentPerRequest,
      'queryExecutionTimeout': ?queryExecutionTimeout,
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'workloadGroupName': ?workloadGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory SqlPoolWorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolWorkloadGroupArgs(
      importance: map['importance'] == null ? null : (map['importance']! as String).input(),
      maxResourcePercent: (map['maxResourcePercent'] as int).input(),
      maxResourcePercentPerRequest: map['maxResourcePercentPerRequest'] == null ? null : (map['maxResourcePercentPerRequest']! as double).input(),
      minResourcePercent: (map['minResourcePercent'] as int).input(),
      minResourcePercentPerRequest: (map['minResourcePercentPerRequest'] as double).input(),
      queryExecutionTimeout: map['queryExecutionTimeout'] == null ? null : (map['queryExecutionTimeout']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sqlPoolName: (map['sqlPoolName'] as String).input(),
      workloadGroupName: map['workloadGroupName'] == null ? null : (map['workloadGroupName']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

