// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_workload_classifier_args_doc}
/// Arguments for getSqlPoolWorkloadClassifier.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_workload_classifier_args_doc}
class GetSqlPoolWorkloadClassifierArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workload classifier.
  final pulumi.Input<String> workloadClassifierName;
  /// The name of the workload group.
  final pulumi.Input<String> workloadGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolWorkloadClassifierArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [workloadClassifierName] The name of the workload classifier.
  /// [workloadGroupName] The name of the workload group.
  /// [workspaceName] The name of the workspace.
  const GetSqlPoolWorkloadClassifierArgs({
    required this.resourceGroupName,
    required this.sqlPoolName,
    required this.workloadClassifierName,
    required this.workloadGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'workloadClassifierName': workloadClassifierName,
      'workloadGroupName': workloadGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolWorkloadClassifierArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolWorkloadClassifierArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Input.fromValue(map['sqlPoolName'] as String),
      workloadClassifierName: pulumi.Input.fromValue(map['workloadClassifierName'] as String),
      workloadGroupName: pulumi.Input.fromValue(map['workloadGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

