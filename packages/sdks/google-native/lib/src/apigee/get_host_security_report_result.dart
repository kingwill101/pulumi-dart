// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_security_report_metadata_response.dart';
import 'google_cloud_apigee_v1_security_report_result_metadata_response.dart';

/// Result data returned by getHostSecurityReport.
class GetHostSecurityReportResult {
  /// Creation time of the query.
  final String? created;
  /// Display Name specified by the user.
  final String? displayName;
  /// Hostname is available only when query is executed at host level.
  final String? envgroupHostname;
  /// Error is set when query fails.
  final String? error;
  /// ExecutionTime is available only after the query is completed.
  final String? executionTime;
  /// Contains information like metrics, dimenstions etc of the Security Report.
  final GoogleCloudApigeeV1SecurityReportMetadataResponse? queryParams;
  /// Report Definition ID.
  final String? reportDefinitionId;
  /// Result is available only after the query is completed.
  final GoogleCloudApigeeV1SecurityReportResultMetadataResponse? result;
  /// ResultFileSize is available only after the query is completed.
  final String? resultFileSize;
  /// ResultRows is available only after the query is completed.
  final String? resultRows;
  /// Self link of the query. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  final String? self;
  /// Query state could be "enqueued", "running", "completed", "expired" and "failed".
  final String? state;
  /// Last updated timestamp for the query.
  final String? updated;

  /// Creates a new [GetHostSecurityReportResult].
  /// [created] Creation time of the query.
  /// [displayName] Display Name specified by the user.
  /// [envgroupHostname] Hostname is available only when query is executed at host level.
  /// [error] Error is set when query fails.
  /// [executionTime] ExecutionTime is available only after the query is completed.
  /// [queryParams] Contains information like metrics, dimenstions etc of the Security Report.
  /// [reportDefinitionId] Report Definition ID.
  /// [result] Result is available only after the query is completed.
  /// [resultFileSize] ResultFileSize is available only after the query is completed.
  /// [resultRows] ResultRows is available only after the query is completed.
  /// [self] Self link of the query. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  /// [state] Query state could be "enqueued", "running", "completed", "expired" and "failed".
  /// [updated] Last updated timestamp for the query.
  const GetHostSecurityReportResult({
    this.created,
    this.displayName,
    this.envgroupHostname,
    this.error,
    this.executionTime,
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
      'displayName': ?displayName,
      'envgroupHostname': ?envgroupHostname,
      'error': ?error,
      'executionTime': ?executionTime,
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

  factory GetHostSecurityReportResult.fromMap(Map<String, dynamic> map) {
    return GetHostSecurityReportResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      envgroupHostname: (() { final guardedValue = map['envgroupHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionTime: (() { final guardedValue = map['executionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryParams: (() { final guardedValue = map['queryParams']; if (guardedValue == null) return null; return GoogleCloudApigeeV1SecurityReportMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reportDefinitionId: (() { final guardedValue = map['reportDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return GoogleCloudApigeeV1SecurityReportResultMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resultFileSize: (() { final guardedValue = map['resultFileSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resultRows: (() { final guardedValue = map['resultRows']; if (guardedValue == null) return null; return guardedValue as String; })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
