// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sensitivity_label_rank.dart';

/// {@template pulumi_synapse_sql_pool_sensitivity_label_args_doc}
/// The set of arguments for SqlPoolSensitivityLabel.
/// {@endtemplate}
/// {@macro pulumi_synapse_sql_pool_sensitivity_label_args_doc}
class SqlPoolSensitivityLabelArgs {
  /// The name of the column.
  final pulumi.Input<String> columnName;
  /// The information type.
  final pulumi.Input<String>? informationType;
  /// The information type ID.
  final pulumi.Input<String>? informationTypeId;
  /// The label ID.
  final pulumi.Input<String>? labelId;
  /// The label name.
  final pulumi.Input<String>? labelName;
  final pulumi.Input<SensitivityLabelRank>? rank;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the schema.
  final pulumi.Input<String> schemaName;
  /// The source of the sensitivity label.
  final pulumi.Input<String>? sensitivityLabelSource;
  /// SQL pool name
  final pulumi.Input<String> sqlPoolName;
  /// The name of the table.
  final pulumi.Input<String> tableName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [SqlPoolSensitivityLabelArgs].
  /// [columnName] The name of the column.
  /// [informationType] The information type.
  /// [informationTypeId] The information type ID.
  /// [labelId] The label ID.
  /// [labelName] The label name.
  /// [rank] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [schemaName] The name of the schema.
  /// [sensitivityLabelSource] The source of the sensitivity label.
  /// [sqlPoolName] SQL pool name
  /// [tableName] The name of the table.
  /// [workspaceName] The name of the workspace.
  const SqlPoolSensitivityLabelArgs({
    required this.columnName,
    this.informationType,
    this.informationTypeId,
    this.labelId,
    this.labelName,
    this.rank,
    required this.resourceGroupName,
    required this.schemaName,
    this.sensitivityLabelSource,
    required this.sqlPoolName,
    required this.tableName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'informationType': ?informationType,
      'informationTypeId': ?informationTypeId,
      'labelId': ?labelId,
      'labelName': ?labelName,
      'rank': ?pulumi.Input.mapOptionalInputValue<SensitivityLabelRank, String>(rank, (value) => value.wireValue),
      'resourceGroupName': resourceGroupName,
      'schemaName': schemaName,
      'sensitivityLabelSource': ?sensitivityLabelSource,
      'sqlPoolName': sqlPoolName,
      'tableName': tableName,
      'workspaceName': workspaceName,
    };
  }

  factory SqlPoolSensitivityLabelArgs.fromMap(Map<String, dynamic> map) {
    return SqlPoolSensitivityLabelArgs(
      columnName: pulumi.Input.fromValue(map['columnName'] as String),
      informationType: (() { final guardedValue = map['informationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      informationTypeId: (() { final guardedValue = map['informationTypeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelId: (() { final guardedValue = map['labelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelName: (() { final guardedValue = map['labelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rank: (() { final guardedValue = map['rank']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SensitivityLabelRank.fromValue(guardedValue as String)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      schemaName: pulumi.Input.fromValue(map['schemaName'] as String),
      sensitivityLabelSource: (() { final guardedValue = map['sensitivityLabelSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlPoolName: pulumi.Input.fromValue(map['sqlPoolName'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
