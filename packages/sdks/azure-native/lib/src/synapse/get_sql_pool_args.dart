// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_args_doc}
/// Arguments for getSqlPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_args_doc}
class GetSqlPoolArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sqlPoolName] SQL pool name
  /// [workspaceName] The name of the workspace.
  const GetSqlPoolArgs({
    required this.resourceGroupName,
    required this.sqlPoolName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'sqlPoolName': sqlPoolName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sqlPoolName: pulumi.Input.fromValue(map['sqlPoolName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

