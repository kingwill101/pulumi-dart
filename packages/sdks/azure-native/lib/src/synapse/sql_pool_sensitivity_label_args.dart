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
  SqlPoolSensitivityLabelArgs({
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
      'rank': ?pulumi.Input.mapOptionalInputValue<SensitivityLabelRank, String>(rank, (value) => value.value),
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
      columnName: (map['columnName'] as String).input(),
      informationType: map['informationType'] == null ? null : (map['informationType']! as String).input(),
      informationTypeId: map['informationTypeId'] == null ? null : (map['informationTypeId']! as String).input(),
      labelId: map['labelId'] == null ? null : (map['labelId']! as String).input(),
      labelName: map['labelName'] == null ? null : (map['labelName']! as String).input(),
      rank: map['rank'] == null ? null : (SensitivityLabelRank.fromValue(map['rank']! as String)).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      sensitivityLabelSource: map['sensitivityLabelSource'] == null ? null : (map['sensitivityLabelSource']! as String).input(),
      sqlPoolName: (map['sqlPoolName'] as String).input(),
      tableName: (map['tableName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

