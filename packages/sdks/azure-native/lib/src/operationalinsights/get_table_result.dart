// ignore_for_file: unused_element, unnecessary_cast

import 'restored_logs_response.dart';
import 'result_statistics_response.dart';
import 'schema_response.dart';
import 'search_results_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// The table data archive retention in days. Calculated as (totalRetentionInDays-retentionInDays)
  final int archiveRetentionInDays;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The timestamp that table plan was last modified (UTC).
  final String lastPlanModifiedDate;
  /// The name of the resource
  final String name;
  /// Instruct the system how to handle and charge the logs ingested to this table.
  final String? plan;
  /// Table's current provisioning state. If set to 'updating', indicates a resource lock due to ongoing operation, forbidding any update to the table until the ongoing operation is concluded.
  final String provisioningState;
  /// Parameters of the restore operation that initiated this table.
  final RestoredLogsResponse? restoredLogs;
  /// Search job execution statistics.
  final ResultStatisticsResponse resultStatistics;
  /// The table retention in days, between 4 and 730. Setting this property to -1 will default to the workspace retention.
  final int? retentionInDays;
  /// True - Value originates from workspace retention in days, False - Customer specific.
  final bool retentionInDaysAsDefault;
  /// Table schema.
  final SchemaResponse? schema;
  /// Parameters of the search job that initiated this table.
  final SearchResultsResponse? searchResults;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// The table total retention in days, between 4 and 4383. Setting this property to -1 will default to table retention.
  final int? totalRetentionInDays;
  /// True - Value originates from retention in days, False - Customer specific.
  final bool totalRetentionInDaysAsDefault;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTableResult].
  /// [archiveRetentionInDays] The table data archive retention in days. Calculated as (totalRetentionInDays-retentionInDays)
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [lastPlanModifiedDate] The timestamp that table plan was last modified (UTC).
  /// [name] The name of the resource
  /// [plan] Instruct the system how to handle and charge the logs ingested to this table.
  /// [provisioningState] Table's current provisioning state. If set to 'updating', indicates a resource lock due to ongoing operation, forbidding any update to the table until the ongoing operation is concluded.
  /// [restoredLogs] Parameters of the restore operation that initiated this table.
  /// [resultStatistics] Search job execution statistics.
  /// [retentionInDays] The table retention in days, between 4 and 730. Setting this property to -1 will default to the workspace retention.
  /// [retentionInDaysAsDefault] True - Value originates from workspace retention in days, False - Customer specific.
  /// [schema] Table schema.
  /// [searchResults] Parameters of the search job that initiated this table.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [totalRetentionInDays] The table total retention in days, between 4 and 4383. Setting this property to -1 will default to table retention.
  /// [totalRetentionInDaysAsDefault] True - Value originates from retention in days, False - Customer specific.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetTableResult({
    required this.archiveRetentionInDays,
    required this.azureApiVersion,
    required this.id,
    required this.lastPlanModifiedDate,
    required this.name,
    this.plan,
    required this.provisioningState,
    this.restoredLogs,
    required this.resultStatistics,
    this.retentionInDays,
    required this.retentionInDaysAsDefault,
    this.schema,
    this.searchResults,
    required this.systemData,
    this.totalRetentionInDays,
    required this.totalRetentionInDaysAsDefault,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveRetentionInDays': archiveRetentionInDays,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'lastPlanModifiedDate': lastPlanModifiedDate,
      'name': name,
      'plan': ?plan,
      'provisioningState': provisioningState,
      'restoredLogs': ?restoredLogs?.toMap(),
      'resultStatistics': resultStatistics.toMap(),
      'retentionInDays': ?retentionInDays,
      'retentionInDaysAsDefault': retentionInDaysAsDefault,
      'schema': ?schema?.toMap(),
      'searchResults': ?searchResults?.toMap(),
      'systemData': systemData.toMap(),
      'totalRetentionInDays': ?totalRetentionInDays,
      'totalRetentionInDaysAsDefault': totalRetentionInDaysAsDefault,
      'type': type,
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      archiveRetentionInDays: map['archiveRetentionInDays'] as int,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      lastPlanModifiedDate: map['lastPlanModifiedDate'] as String,
      name: map['name'] as String,
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      restoredLogs: (() { final guardedValue = map['restoredLogs']; if (guardedValue == null) return null; return RestoredLogsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resultStatistics: ResultStatisticsResponse.fromMap((map['resultStatistics']! as Map).cast<String, dynamic>()),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      retentionInDaysAsDefault: map['retentionInDaysAsDefault'] as bool,
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return SchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      searchResults: (() { final guardedValue = map['searchResults']; if (guardedValue == null) return null; return SearchResultsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      totalRetentionInDays: (() { final guardedValue = map['totalRetentionInDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      totalRetentionInDaysAsDefault: map['totalRetentionInDaysAsDefault'] as bool,
      type: map['type'] as String,
    );
  }
}

