// ignore_for_file: unused_element, unnecessary_cast

import 'report_summary_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getReport.
class GetReportMigrationcenterV1alpha1Result {
  /// Creation timestamp.
  final String createTime;
  /// Free-text description.
  final String description;
  /// User-friendly display name. Maximum length is 63 characters.
  final String displayName;
  /// Name of resource.
  final String name;
  /// Report creation state.
  final String state;
  /// Summary view of the Report.
  final ReportSummaryResponseMigrationcenterV1alpha1 summary;
  /// Report type.
  final String type;
  /// Last update timestamp.
  final String updateTime;

  /// Creates a new [GetReportMigrationcenterV1alpha1Result].
  /// [createTime] Creation timestamp.
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [name] Name of resource.
  /// [state] Report creation state.
  /// [summary] Summary view of the Report.
  /// [type] Report type.
  /// [updateTime] Last update timestamp.
  const GetReportMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.name,
    required this.state,
    required this.summary,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'name': name,
      'state': state,
      'summary': summary.toMap(),
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetReportMigrationcenterV1alpha1Result.fromMap(Map<String, dynamic> map) {
    return GetReportMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      summary: ReportSummaryResponseMigrationcenterV1alpha1.fromMap((map['summary']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
