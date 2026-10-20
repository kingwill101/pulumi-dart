// ignore_for_file: unused_element, unnecessary_cast

import 'execution_report_response_migrationcenter_v1alpha1.dart';
import 'gcspayload_info_response.dart';
import 'inline_payload_info_response.dart';
import 'validation_report_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getImportJob.
class GetImportJobMigrationcenterV1alpha1Result {
  /// Reference to a source.
  final String? assetSource;
  /// The timestamp when the import job was completed.
  final String? completeTime;
  /// The timestamp when the import job was created.
  final String? createTime;
  /// User-friendly display name. Maximum length is 63 characters.
  final String? displayName;
  /// The report with the results of running the import job.
  final ExecutionReportResponseMigrationcenterV1alpha1? executionReport;
  /// The payload is in Google Cloud Storage.
  final GCSPayloadInfoResponse? gcsPayload;
  /// The payload is included in the request, mainly used for small import jobs.
  final InlinePayloadInfoResponse? inlinePayload;
  /// Labels as key value pairs.
  final Map<String, String>? labels;
  /// The full name of the import job.
  final String? name;
  /// The state of the import job.
  final String? state;
  /// The timestamp when the import job was last updated.
  final String? updateTime;
  /// The report with the validation results of the import job.
  final ValidationReportResponseMigrationcenterV1alpha1? validationReport;

  /// Creates a new [GetImportJobMigrationcenterV1alpha1Result].
  /// [assetSource] Reference to a source.
  /// [completeTime] The timestamp when the import job was completed.
  /// [createTime] The timestamp when the import job was created.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [executionReport] The report with the results of running the import job.
  /// [gcsPayload] The payload is in Google Cloud Storage.
  /// [inlinePayload] The payload is included in the request, mainly used for small import jobs.
  /// [labels] Labels as key value pairs.
  /// [name] The full name of the import job.
  /// [state] The state of the import job.
  /// [updateTime] The timestamp when the import job was last updated.
  /// [validationReport] The report with the validation results of the import job.
  const GetImportJobMigrationcenterV1alpha1Result({
    this.assetSource,
    this.completeTime,
    this.createTime,
    this.displayName,
    this.executionReport,
    this.gcsPayload,
    this.inlinePayload,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.validationReport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetSource': ?assetSource,
      'completeTime': ?completeTime,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'executionReport': ?executionReport?.toMap(),
      'gcsPayload': ?gcsPayload?.toMap(),
      'inlinePayload': ?inlinePayload?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
      'validationReport': ?validationReport?.toMap(),
    };
  }

  factory GetImportJobMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetImportJobMigrationcenterV1alpha1Result(
      assetSource: (() { final guardedValue = map['assetSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completeTime: (() { final guardedValue = map['completeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionReport: (() { final guardedValue = map['executionReport']; if (guardedValue == null) return null; return ExecutionReportResponseMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gcsPayload: (() { final guardedValue = map['gcsPayload']; if (guardedValue == null) return null; return GCSPayloadInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inlinePayload: (() { final guardedValue = map['inlinePayload']; if (guardedValue == null) return null; return InlinePayloadInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationReport: (() { final guardedValue = map['validationReport']; if (guardedValue == null) return null; return ValidationReportResponseMigrationcenterV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
