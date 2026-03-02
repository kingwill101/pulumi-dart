// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sensitivity_label_rank.dart';

/// {@template pulumi_sql_managed_database_sensitivity_label_args_doc}
/// The set of arguments for ManagedDatabaseSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_database_sensitivity_label_args_doc}
class ManagedDatabaseSensitivityLabelArgs {
  final pulumi.Input<String>? clientClassificationSource;
  /// The name of the column.
  final pulumi.Input<String> columnName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The information type.
  final pulumi.Input<String>? informationType;
  /// The information type ID.
  final pulumi.Input<String>? informationTypeId;
  /// The label ID.
  final pulumi.Input<String>? labelId;
  /// The label name.
  final pulumi.Input<String>? labelName;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  final pulumi.Input<SensitivityLabelRank>? rank;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schema.
  final pulumi.Input<String> schemaName;
  /// The source of the sensitivity label.
  final pulumi.Input<String>? sensitivityLabelSource;
  /// The name of the table.
  final pulumi.Input<String> tableName;

  /// Creates a new [ManagedDatabaseSensitivityLabelArgs].
  /// [clientClassificationSource] Optional.
  /// [columnName] The name of the column.
  /// [databaseName] The name of the database.
  /// [informationType] The information type.
  /// [informationTypeId] The information type ID.
  /// [labelId] The label ID.
  /// [labelName] The label name.
  /// [managedInstanceName] The name of the managed instance.
  /// [rank] Optional.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [tableName] The name of the table.
  ManagedDatabaseSensitivityLabelArgs({
    this.clientClassificationSource,
    required this.columnName,
    required this.databaseName,
    this.informationType,
    this.informationTypeId,
    this.labelId,
    this.labelName,
    required this.managedInstanceName,
    this.rank,
    required this.resourceGroupName,
    required this.schemaName,
    this.sensitivityLabelSource,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientClassificationSource': ?clientClassificationSource,
      'columnName': columnName,
      'databaseName': databaseName,
      'informationType': ?informationType,
      'informationTypeId': ?informationTypeId,
      'labelId': ?labelId,
      'labelName': ?labelName,
      'managedInstanceName': managedInstanceName,
      'rank': ?pulumi.Input.mapOptionalInputValue<SensitivityLabelRank, String>(rank, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': ?sensitivityLabelSource,
      'tableName': tableName,
    };
  }

  factory ManagedDatabaseSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return ManagedDatabaseSensitivityLabelArgs(
      clientClassificationSource: map['clientClassificationSource'] == null ? null : (map['clientClassificationSource'] as String).input(),
      columnName: (map['columnName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      informationType: map['informationType'] == null ? null : (map['informationType'] as String).input(),
      informationTypeId: map['informationTypeId'] == null ? null : (map['informationTypeId'] as String).input(),
      labelId: map['labelId'] == null ? null : (map['labelId'] as String).input(),
      labelName: map['labelName'] == null ? null : (map['labelName'] as String).input(),
      managedInstanceName: (map['managedInstanceName'] as String).input(),
      rank: map['rank'] == null ? null : (SensitivityLabelRank.fromValue(map['rank'] as String)).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      sensitivityLabelSource: map['sensitivityLabelSource'] == null ? null : (map['sensitivityLabelSource'] as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

