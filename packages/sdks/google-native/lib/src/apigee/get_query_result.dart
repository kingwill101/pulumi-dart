// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_async_query_result_response.dart';
import 'google_cloud_apigee_v1_query_metadata_response.dart';

/// Result data returned by getQuery.
class GetQueryResult {
  /// Creation time of the query.
  final String? created;
  /// Hostname is available only when query is executed at host level.
  final String? envgroupHostname;
  /// Error is set when query fails.
  final String? error;
  /// ExecutionTime is available only after the query is completed.
  final String? executionTime;
  /// Asynchronous Query Name.
  final String? name;
  /// Contains information like metrics, dimenstions etc of the AsyncQuery.
  final GoogleCloudApigeeV1QueryMetadataResponse? queryParams;
  /// Asynchronous Report ID.
  final String? reportDefinitionId;
  /// Result is available only after the query is completed.
  final GoogleCloudApigeeV1AsyncQueryResultResponse? result;
  /// ResultFileSize is available only after the query is completed.
  final String? resultFileSize;
  /// ResultRows is available only after the query is completed.
  final String? resultRows;
  /// Self link of the query. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  final String? self;
  /// Query state could be "enqueued", "running", "completed", "failed".
  final String? state;
  /// Last updated timestamp for the query.
  final String? updated;

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
  const GetQueryResult({
    this.created,
    this.envgroupHostname,
    this.error,
    this.executionTime,
    this.name,
    this.queryParams,
    this.reportDefinitionId,
    this.result,
    this.resultFileSize,
    this.resultRows,
    this.self,
    this.state,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'envgroupHostname': ?envgroupHostname,
      'error': ?error,
      'executionTime': ?executionTime,
      'name': ?name,
      'queryParams': ?queryParams?.toMap(),
      'reportDefinitionId': ?reportDefinitionId,
      'result': ?result?.toMap(),
      'resultFileSize': ?resultFileSize,
      'resultRows': ?resultRows,
      'self': ?self,
      'state': ?state,
      'updated': ?updated,
    };
  }

  factory GetQueryResult.fromMap(Map<String, dynamic> map) {
    return GetQueryResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      envgroupHostname: (() { final guardedValue = map['envgroupHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionTime: (() { final guardedValue = map['executionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return GoogleCloudApigeeV1QueryMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reportDefinitionId: (() { final guardedValue = map['reportDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return GoogleCloudApigeeV1AsyncQueryResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resultFileSize: (() { final guardedValue = map['resultFileSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resultRows: (() { final guardedValue = map['resultRows']; if (guardedValue == null) return null; return guardedValue as String; })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
