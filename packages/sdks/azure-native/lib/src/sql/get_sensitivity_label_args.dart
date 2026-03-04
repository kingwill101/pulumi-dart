// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_sensitivity_label_args_doc}
/// Arguments for getSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_sql_get_sensitivity_label_args_doc}
class GetSensitivityLabelArgs {
  /// The name of the column.
  final pulumi.Input<String> columnName;

  /// The name of the database.
  final pulumi.Input<String> databaseName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the schema.
  final pulumi.Input<String> schemaName;

  /// The source of the sensitivity label.
  final pulumi.Input<String> sensitivityLabelSource;

  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// The name of the table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetSensitivityLabelArgs].
  /// [columnName] The name of the column.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [serverName] The name of the server.
  /// [tableName] The name of the table.
  GetSensitivityLabelArgs({
    required this.columnName,
    required this.databaseName,
    required this.resourceGroupName,
    required this.schemaName,
    required this.sensitivityLabelSource,
    required this.serverName,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': sensitivityLabelSource,
      'serverName': serverName,
      'tableName': tableName,
    };
  }

  factory GetSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return GetSensitivityLabelArgs(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      sensitivityLabelSource: pulumi.Input.fromValue(
        map['sensitivityLabelSource'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
