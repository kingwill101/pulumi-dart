// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_folder_intelligence_findings_summary_finding_summary_summary_detail.dart';

class GetControlFolderIntelligenceFindingsSummaryFindingSummary {
  /// The category of the finding.
  final pulumi.Input<String> category;
  /// The creation time of the earliest finding that this summary is based on.
  final pulumi.Input<String> createTime;
  /// Severity of the finding.
  final pulumi.Input<String> severity;
  /// The SummaryDetails resources. Structure is documented below.
  final pulumi.Input<List<GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail>> summaryDetails;
  /// The fully qualified Cloud resource name for which this summary was generated.
  final pulumi.Input<String> targetResource;
  /// The type of finding.
  final pulumi.Input<String> type;
  /// The time of the most recent update among all the findings that this summary is based on.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetControlFolderIntelligenceFindingsSummaryFindingSummary].
  /// [category] The category of the finding.
  /// [createTime] The creation time of the earliest finding that this summary is based on.
  /// [severity] Severity of the finding.
  /// [summaryDetails] The SummaryDetails resources. Structure is documented below.
  /// [targetResource] The fully qualified Cloud resource name for which this summary was generated.
  /// [type] The type of finding.
  /// [updateTime] The time of the most recent update among all the findings that this summary is based on.
  const GetControlFolderIntelligenceFindingsSummaryFindingSummary({
    required this.category,
    required this.createTime,
    required this.severity,
    required this.summaryDetails,
    required this.targetResource,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'createTime': createTime,
      'severity': severity,
      'summaryDetails': pulumi.Input.mapInputValue<List<GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail>, List<Map<String, dynamic>>>(summaryDetails, (value) => pulumi.Input.encodeList<GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetResource': targetResource,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetControlFolderIntelligenceFindingsSummaryFindingSummary.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceFindingsSummaryFindingSummary(
      category: pulumi.Input.fromValue(map['category'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      severity: pulumi.Input.fromValue(map['severity'] as String),
      summaryDetails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail>(map['summaryDetails']!, (value) => GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail.fromMap((value as Map).cast<String, dynamic>()))),
      targetResource: pulumi.Input.fromValue(map['targetResource'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
