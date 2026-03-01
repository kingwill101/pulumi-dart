// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_workload_group_args_doc}
/// Arguments for getSqlPoolWorkloadGroup.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_workload_group_args_doc}
class GetSqlPoolWorkloadGroupArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workload group.
  final pulumi.Input<String> workloadGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolWorkloadGroupArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [workloadGroupName] The name of the workload group.
  /// [workspaceName] The name of the workspace.
  GetSqlPoolWorkloadGroupArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sqlPoolName,
    required pulumi.Output<String> workloadGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      workloadGroupName = pulumi.Input.asInput<String>(workloadGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'workloadGroupName': workloadGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolWorkloadGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolWorkloadGroupArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Output.create<String>(map['sqlPoolName'] as String),
      workloadGroupName: pulumi.Output.create<String>(map['workloadGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

