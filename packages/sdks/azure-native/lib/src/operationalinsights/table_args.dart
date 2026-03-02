// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restored_logs.dart';
import 'schema.dart';
import 'search_results.dart';

/// {@template pulumi_operationalinsights_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_table_args_doc}
class TableArgs {
  /// Instruct the system how to handle and charge the logs ingested to this table.
  final pulumi.Input<String>? plan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameters of the restore operation that initiated this table.
  final pulumi.Input<RestoredLogs>? restoredLogs;
  /// The table retention in days, between 4 and 730. Setting this property to -1 will default to the workspace retention.
  final pulumi.Input<int>? retentionInDays;
  /// Table schema.
  final pulumi.Input<Schema>? schema;
  /// Parameters of the search job that initiated this table.
  final pulumi.Input<SearchResults>? searchResults;
  /// The name of the table.
  final pulumi.Input<String>? tableName;
  /// The table total retention in days, between 4 and 4383. Setting this property to -1 will default to table retention.
  final pulumi.Input<int>? totalRetentionInDays;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [TableArgs].
  /// [plan] Instruct the system how to handle and charge the logs ingested to this table.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restoredLogs] Parameters of the restore operation that initiated this table.
  /// [retentionInDays] The table retention in days, between 4 and 730. Setting this property to -1 will default to the workspace retention.
  /// [schema] Table schema.
  /// [searchResults] Parameters of the search job that initiated this table.
  /// [tableName] The name of the table.
  /// [totalRetentionInDays] The table total retention in days, between 4 and 4383. Setting this property to -1 will default to table retention.
  /// [workspaceName] The name of the workspace.
  TableArgs({
    this.plan,
    required this.resourceGroupName,
    this.restoredLogs,
    this.retentionInDays,
    this.schema,
    this.searchResults,
    this.tableName,
    this.totalRetentionInDays,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plan': ?plan,
      'resourceGroupName': resourceGroupName,
      'restoredLogs': ?pulumi.Input.mapOptionalInputValue<RestoredLogs, Map<String, dynamic>>(restoredLogs, (value) => value.toMap()),
      'retentionInDays': ?retentionInDays,
      'schema': ?pulumi.Input.mapOptionalInputValue<Schema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'searchResults': ?pulumi.Input.mapOptionalInputValue<SearchResults, Map<String, dynamic>>(searchResults, (value) => value.toMap()),
      'tableName': ?tableName,
      'totalRetentionInDays': ?totalRetentionInDays,
      'workspaceName': workspaceName,
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      plan: map['plan'] == null ? null : (map['plan']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restoredLogs: map['restoredLogs'] == null ? null : (RestoredLogs.fromMap((map['restoredLogs']! as Map).cast<String, dynamic>())).input(),
      retentionInDays: map['retentionInDays'] == null ? null : (map['retentionInDays']! as int).input(),
      schema: map['schema'] == null ? null : (Schema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      searchResults: map['searchResults'] == null ? null : (SearchResults.fromMap((map['searchResults']! as Map).cast<String, dynamic>())).input(),
      tableName: map['tableName'] == null ? null : (map['tableName']! as String).input(),
      totalRetentionInDays: map['totalRetentionInDays'] == null ? null : (map['totalRetentionInDays']! as int).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

