// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_database_sensitivity_label_args_doc}
/// Arguments for getManagedDatabaseSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_database_sensitivity_label_args_doc}
class GetManagedDatabaseSensitivityLabelArgs {
  /// The name of the column.
  final pulumi.Input<String> columnName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schema.
  final pulumi.Input<String> schemaName;
  /// The source of the sensitivity label.
  final pulumi.Input<String> sensitivityLabelSource;
  /// The name of the table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetManagedDatabaseSensitivityLabelArgs].
  /// [columnName] The name of the column.
  /// [databaseName] The name of the database.
  /// [managedInstanceName] The name of the managed instance.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [tableName] The name of the table.
  GetManagedDatabaseSensitivityLabelArgs({
    required pulumi.Output<String> columnName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> managedInstanceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaName,
    required pulumi.Output<String> sensitivityLabelSource,
    required pulumi.Output<String> tableName,
  }) :
      columnName = pulumi.Input.asInput<String>(columnName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaName = pulumi.Input.asInput<String>(schemaName),
      sensitivityLabelSource = pulumi.Input.asInput<String>(sensitivityLabelSource),
      tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'databaseName': databaseName,
      'managedInstanceName': managedInstanceName,
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': sensitivityLabelSource,
      'tableName': tableName,
    };
  }

  factory GetManagedDatabaseSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseSensitivityLabelArgs(
      columnName: pulumi.Output.create<String>(map['columnName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      managedInstanceName: pulumi.Output.create<String>(map['managedInstanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaName: pulumi.Output.create<String>(map['schemaName'] as String),
      sensitivityLabelSource: pulumi.Output.create<String>(map['sensitivityLabelSource'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
    );
  }
}

