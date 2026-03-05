// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_async_query_result_response.dart';
import 'google_cloud_apigee_v1_query_metadata_response.dart';

/// Result data returned by getQuery.
class GetQueryResult {
  /// Creation time of the query.
  final String created;
  /// Hostname is available only when query is executed at host level.
  final String envgroupHostname;
  /// Error is set when query fails.
  final String error;
  /// ExecutionTime is available only after the query is completed.
  final String executionTime;
  /// Asynchronous Query Name.
  final String name;
  /// Contains information like metrics, dimenstions etc of the AsyncQuery.
  final GoogleCloudApigeeV1QueryMetadataResponse queryParams;
  /// Asynchronous Report ID.
  final String reportDefinitionId;
  /// Result is available only after the query is completed.
  final GoogleCloudApigeeV1AsyncQueryResultResponse result;
  /// ResultFileSize is available only after the query is completed.
  final String resultFileSize;
  /// ResultRows is available only after the query is completed.
  final String resultRows;
  /// Self link of the query. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  final String self;
  /// Query state could be "enqueued", "running", "completed", "failed".
  final String state;
  /// Last updated timestamp for the query.
  final String updated;

  /// Creates a new [GetQueryResult].
  /// [created] Creation time of the query.
  /// [envgroupHostname] Hostname is available only when query is executed at host level.
  /// [error] Error is set when query fails.
  /// [executionTime] ExecutionTime is available only after the query is completed.
  /// [name] Asynchronous Query Name.
  /// [queryParams] Contains information like metrics, dimenstions etc of the AsyncQuery.
  /// [reportDefinitionId] Asynchronous Report ID.
  /// [result] Result is available only after the query is completed.
  /// [resultFileSize] ResultFileSize is available only after the query is completed.
  /// [resultRows] ResultRows is available only after the query is completed.
  /// [self] Self link of the query. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  /// [state] Query state could be "enqueued", "running", "completed", "failed".
  /// [updated] Last updated timestamp for the query.
  GetQueryResult({
    required this.created,
    required this.envgroupHostname,
    required this.error,
    required this.executionTime,
    required this.name,
    required this.queryParams,
    required this.reportDefinitionId,
    required this.result,
    required this.resultFileSize,
    required this.resultRows,
    required this.self,
    required this.state,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'envgroupHostname': envgroupHostname,
      'error': error,
      'executionTime': executionTime,
      'name': name,
      'queryParams': queryParams.toMap(),
      'reportDefinitionId': reportDefinitionId,
      'result': result.toMap(),
      'resultFileSize': resultFileSize,
      'resultRows': resultRows,
      'self': self,
      'state': state,
      'updated': updated,
    };
  }

  factory GetQueryResult.fromMap(Map<String, dynamic> map) {
    return GetQueryResult(
      created: map['created'] as String,
      envgroupHostname: map['envgroupHostname'] as String,
      error: map['error'] as String,
      executionTime: map['executionTime'] as String,
      name: map['name'] as String,
      queryParams: GoogleCloudApigeeV1QueryMetadataResponse.fromMap((map['queryParams']! as Map).cast<String, dynamic>()),
      reportDefinitionId: map['reportDefinitionId'] as String,
      result: GoogleCloudApigeeV1AsyncQueryResultResponse.fromMap((map['result']! as Map).cast<String, dynamic>()),
      resultFileSize: map['resultFileSize'] as String,
      resultRows: map['resultRows'] as String,
      self: map['self'] as String,
      state: map['state'] as String,
      updated: map['updated'] as String,
    );
  }
}

