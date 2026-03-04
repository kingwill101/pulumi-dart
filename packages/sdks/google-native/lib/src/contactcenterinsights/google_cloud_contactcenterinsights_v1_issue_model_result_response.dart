// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_assignment_response.dart';

/// Issue Modeling result on a conversation.
class GoogleCloudContactcenterinsightsV1IssueModelResultResponse {
  /// Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  final pulumi.Input<String> issueModel;

  /// All the matched issues.
  final pulumi.Input<
    List<GoogleCloudContactcenterinsightsV1IssueAssignmentResponse>
  >
  issues;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueModelResultResponse].
  /// [issueModel] Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModels/{issue_model}
  /// [issues] All the matched issues.
  GoogleCloudContactcenterinsightsV1IssueModelResultResponse({
    required this.issueModel,
    required this.issues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueModel': issueModel,
      'issues':
          pulumi.Input.mapInputValue<
            List<GoogleCloudContactcenterinsightsV1IssueAssignmentResponse>,
            List<Map<String, dynamic>>
          >(
            issues,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContactcenterinsightsV1IssueAssignmentResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudContactcenterinsightsV1IssueModelResultResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContactcenterinsightsV1IssueModelResultResponse(
      issueModel: pulumi.Input.fromValue(map['issueModel'] as String),
      issues: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudContactcenterinsightsV1IssueAssignmentResponse
        >(
          map['issues']!,
          (value) =>
              GoogleCloudContactcenterinsightsV1IssueAssignmentResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
