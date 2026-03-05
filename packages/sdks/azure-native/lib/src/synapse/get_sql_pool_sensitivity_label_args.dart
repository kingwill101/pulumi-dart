// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_sql_pool_sensitivity_label_args_doc}
/// Arguments for getSqlPoolSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_sql_pool_sensitivity_label_args_doc}
class GetSqlPoolSensitivityLabelArgs {
  /// The name of the column.
  final pulumi.Input<String> columnName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schema.
  final pulumi.Input<String> schemaName;
  /// The source of the sensitivity label.
  final pulumi.Input<String> sensitivityLabelSource;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the table.
  final pulumi.Input<String> tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetSqlPoolSensitivityLabelArgs].
  /// [columnName] The name of the column.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [sqlPoolName] SQL pool name
  /// [tableName] The name of the table.
  /// [workspaceName] The name of the workspace.
  GetSqlPoolSensitivityLabelArgs({
    required this.columnName,
    required this.resourceGroupName,
    required this.schemaName,
    required this.sensitivityLabelSource,
    required this.sqlPoolName,
    required this.tableName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': sensitivityLabelSource,
      'sqlPoolName': sqlPoolName,
      'tableName': tableName,
      'workspaceName': workspaceName,
    };
  }

  factory GetSqlPoolSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolSensitivityLabelArgs(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      sensitivityLabelSource: pulumi.Input.fromValue(map['sensitivityLabelSource'] as String),
      sqlPoolName: pulumi.Input.fromValue(map['sqlPoolName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

