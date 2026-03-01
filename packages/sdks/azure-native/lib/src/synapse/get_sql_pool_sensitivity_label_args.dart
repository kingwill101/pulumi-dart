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
    required pulumi.Output<String> columnName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> sensitivityLabelSource,
    required pulumi.Output<String> sqlPoolName,
    required pulumi.Output<String> tableName,
    required pulumi.Output<String> workspaceName,
  }) :
      columnName = pulumi.Input.asInput<String>(columnName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      sensitivityLabelSource = pulumi.Input.asInput<String>(sensitivityLabelSource),
      sqlPoolName = pulumi.Input.asInput<String>(sqlPoolName),
      tableName = pulumi.Input.asInput<String>(tableName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      columnName: pulumi.Output.create<String>(map['columnName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      sensitivityLabelSource: pulumi.Output.create<String>(map['sensitivityLabelSource'] as String),
      sqlPoolName: pulumi.Output.create<String>(map['sqlPoolName'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

