// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail {
  /// The count of impacted resources.
  final pulumi.Input<String> count;
  /// A short description about the FindingSummary.
  final pulumi.Input<String> description;
  /// The percentage of impacted resources.
  final pulumi.Input<double> percentage;
  /// The type of Cloud resource this summary detail applies to.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail].
  /// [count] The count of impacted resources.
  /// [description] A short description about the FindingSummary.
  /// [percentage] The percentage of impacted resources.
  /// [resourceType] The type of Cloud resource this summary detail applies to.
  const GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail({
    required this.count,
    required this.description,
    required this.percentage,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'description': description,
      'percentage': percentage,
      'resourceType': resourceType,
    };
  }

  factory GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceFindingsSummaryFindingSummarySummaryDetail(
      count: pulumi.Input.fromValue(map['count'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      percentage: pulumi.Input.fromValue((map['percentage'] as num).toDouble()),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
