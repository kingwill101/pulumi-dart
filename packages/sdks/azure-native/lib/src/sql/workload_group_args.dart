// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_workload_group_args_doc}
/// The set of arguments for WorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_sql_workload_group_args_doc}
class WorkloadGroupArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
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
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The name of the workload group.
  final pulumi.Input<String?>? workloadGroupName;

  /// Creates a new [WorkloadGroupArgs].
  /// [databaseName] The name of the database.
  /// [importance] The workload group importance level.
  /// [maxResourcePercent] The workload group cap percentage resource.
  /// [maxResourcePercentPerRequest] The workload group request maximum grant percentage.
  /// [minResourcePercent] The workload group minimum percentage resource.
  /// [minResourcePercentPerRequest] The workload group request minimum grant percentage.
  /// [queryExecutionTimeout] The workload group query execution timeout.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [workloadGroupName] The name of the workload group.
  const WorkloadGroupArgs({
    required this.databaseName,
    this.importance,
    required this.maxResourcePercent,
    this.maxResourcePercentPerRequest,
    required this.minResourcePercent,
    required this.minResourcePercentPerRequest,
    this.queryExecutionTimeout,
    required this.resourceGroupName,
    required this.serverName,
    this.workloadGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'importance': ?importance,
      'maxResourcePercent': maxResourcePercent,
      'maxResourcePercentPerRequest': ?maxResourcePercentPerRequest,
      'minResourcePercent': minResourcePercent,
      'minResourcePercentPerRequest': minResourcePercentPerRequest,
      'queryExecutionTimeout': ?queryExecutionTimeout,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'workloadGroupName': ?workloadGroupName,
    };
  }

  factory WorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadGroupArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      importance: (() { final guardedValue = map['importance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxResourcePercent: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxResourcePercent'])),
      maxResourcePercentPerRequest: (() { final guardedValue = map['maxResourcePercentPerRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minResourcePercent: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minResourcePercent'])),
      minResourcePercentPerRequest: pulumi.Input.fromValue((map['minResourcePercentPerRequest'] as num).toDouble()),
      queryExecutionTimeout: (() { final guardedValue = map['queryExecutionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      workloadGroupName: (() { final guardedValue = map['workloadGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
