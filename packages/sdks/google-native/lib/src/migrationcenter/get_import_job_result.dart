// ignore_for_file: unused_element, unnecessary_cast

import 'execution_report_response.dart';
import 'validation_report_response.dart';

/// Result data returned by getImportJob.
class GetImportJobResult {
  /// Reference to a source.
  final String? assetSource;
  /// The timestamp when the import job was completed.
  final String? completeTime;
  /// The timestamp when the import job was created.
  final String? createTime;
  /// Optional. User-friendly display name. Maximum length is 256 characters.
  final String? displayName;
  /// The report with the results of running the import job.
  final ExecutionReportResponse? executionReport;
  /// Labels as key value pairs.
  final Map<String, String>? labels;
  /// The full name of the import job.
  final String? name;
  /// The state of the import job.
  final String? state;
  /// The timestamp when the import job was last updated.
  final String? updateTime;
  /// The report with the validation results of the import job.
  final ValidationReportResponse? validationReport;

  /// Creates a new [GetImportJobResult].
  /// [assetSource] Reference to a source.
  /// [completeTime] The timestamp when the import job was completed.
  /// [createTime] The timestamp when the import job was created.
  /// [displayName] Optional. User-friendly display name. Maximum length is 256 characters.
  /// [executionReport] The report with the results of running the import job.
  /// [labels] Labels as key value pairs.
  /// [name] The full name of the import job.
  /// [state] The state of the import job.
  /// [updateTime] The timestamp when the import job was last updated.
  /// [validationReport] The report with the validation results of the import job.
  const GetImportJobResult({
    this.assetSource,
    this.completeTime,
    this.createTime,
    this.displayName,
    this.executionReport,
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
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
      'validationReport': ?validationReport?.toMap(),
    };
  }

  factory GetImportJobResult.fromMap(Map<String, dynamic> map) {
    return GetImportJobResult(
      assetSource: (() { final guardedValue = map['assetSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completeTime: (() { final guardedValue = map['completeTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionReport: (() { final guardedValue = map['executionReport']; if (guardedValue == null) return null; return ExecutionReportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validationReport: (() { final guardedValue = map['validationReport']; if (guardedValue == null) return null; return ValidationReportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
