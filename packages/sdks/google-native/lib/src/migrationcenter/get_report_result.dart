// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_response.dart';

/// Result data returned by getReport.
class GetReportResult {
  /// Creation timestamp.
  final String? createTime;
  /// Free-text description.
  final String? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final String? displayName;
  /// Name of resource.
  final String? name;
  /// Report creation state.
  final String? state;
  /// Summary view of the Report.
  final ReportSummaryResponse? summary;
  /// Report type.
  final String? type;
  /// Last update timestamp.
  final String? updateTime;

  /// Creates a new [GetReportResult].
  /// [createTime] Creation timestamp.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [name] Name of resource.
  /// [state] Report creation state.
  /// [summary] Summary view of the Report.
  /// [type] Report type.
  /// [updateTime] Last update timestamp.
  const GetReportResult({
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.state,
    this.summary,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'state': ?state,
      'summary': ?summary?.toMap(),
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetReportResult.fromMap(Map<String, dynamic> map) {
    return GetReportResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return ReportSummaryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
