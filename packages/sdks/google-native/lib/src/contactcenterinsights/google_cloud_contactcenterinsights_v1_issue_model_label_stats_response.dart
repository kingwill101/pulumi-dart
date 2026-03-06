// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Aggregated statistics about an issue model.
class GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse {
  /// Number of conversations the issue model has analyzed at this point in time.
  final pulumi.Input<String> analyzedConversationsCount;
  /// Statistics on each issue. Key is the issue's resource name.
  final pulumi.Input<Map<String, String>> issueStats;
  /// Number of analyzed conversations for which no issue was applicable at this point in time.
  final pulumi.Input<String> unclassifiedConversationsCount;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse].
  /// [analyzedConversationsCount] Number of conversations the issue model has analyzed at this point in time.
  /// [issueStats] Statistics on each issue. Key is the issue's resource name.
  /// [unclassifiedConversationsCount] Number of analyzed conversations for which no issue was applicable at this point in time.
  const GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse({
    required this.analyzedConversationsCount,
    required this.issueStats,
    required this.unclassifiedConversationsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzedConversationsCount': analyzedConversationsCount,
      'issueStats': issueStats,
      'unclassifiedConversationsCount': unclassifiedConversationsCount,
    };
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueModelLabelStatsResponse(
      analyzedConversationsCount: pulumi.Input.fromValue(map['analyzedConversationsCount'] as String),
      issueStats: pulumi.Input.fromValue((map['issueStats'] as Map).cast<String, String>()),
      unclassifiedConversationsCount: pulumi.Input.fromValue(map['unclassifiedConversationsCount'] as String),
    );
  }
}

