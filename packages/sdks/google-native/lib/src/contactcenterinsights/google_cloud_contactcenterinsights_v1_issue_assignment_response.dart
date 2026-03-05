// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the issue.
class GoogleCloudContactcenterinsightsV1IssueAssignmentResponse {
  /// Immutable. Display name of the assigned issue. This field is set at time of analyis and immutable since then.
  final pulumi.Input<String> displayName;
  /// Resource name of the assigned issue.
  final pulumi.Input<String> issue;
  /// Score indicating the likelihood of the issue assignment. currently bounded on [0,1].
  final pulumi.Input<double> score;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueAssignmentResponse].
  /// [displayName] Immutable. Display name of the assigned issue. This field is set at time of analyis and immutable since then.
  /// [issue] Resource name of the assigned issue.
  /// [score] Score indicating the likelihood of the issue assignment. currently bounded on [0,1].
  GoogleCloudContactcenterinsightsV1IssueAssignmentResponse({
    required this.displayName,
    required this.issue,
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'issue': issue,
      'score': score,
    };
  }

  factory GoogleCloudContactcenterinsightsV1IssueAssignmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueAssignmentResponse(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      issue: pulumi.Input.fromValue(map['issue'] as String),
      score: pulumi.Input.fromValue(map['score'] as double),
    );
  }
}

