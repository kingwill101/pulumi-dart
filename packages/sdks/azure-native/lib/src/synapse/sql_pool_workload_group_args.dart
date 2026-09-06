// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_sql_pool_workload_group_args_doc}
/// The set of arguments for SqlPoolWorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_workload_group_args_doc}
class SqlPoolWorkloadGroupArgs {
  /// The workload group importance level.
  final pulumi.Input<String?>? importance;
  /// The workload group cap percentage resource.
  final pulumi.Input<int> maxResourcePercent;
  /// The workload group request maximum grant percentage.
  final pulumi.Input<double?>? maxResourcePercentPerRequest;
  /// The workload group minimum percentage resource.
  final pulumi.Input<int> minResourcePercent;
  /// The workload group request minimum grant percentage.
  final pulumi.Input<double> minResourcePercentPerRequest;
  /// The workload group query execution timeout.
  final pulumi.Input<int?>? queryExecutionTimeout;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workload group.
  final pulumi.Input<String?>? workloadGroupName;
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
  const SqlPoolWorkloadGroupArgs({
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
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxResourcePercent: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxResourcePercent'])),
      maxResourcePercentPerRequest: (() { final guardedValue = map['maxResourcePercentPerRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minResourcePercent: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minResourcePercent'])),
      minResourcePercentPerRequest: pulumi.Input.fromValue((map['minResourcePercentPerRequest'] as num).toDouble()),
      queryExecutionTimeout: (() { final guardedValue = map['queryExecutionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Input.fromValue(map['sqlPoolName'] as String),
      workloadGroupName: (() { final guardedValue = map['workloadGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
