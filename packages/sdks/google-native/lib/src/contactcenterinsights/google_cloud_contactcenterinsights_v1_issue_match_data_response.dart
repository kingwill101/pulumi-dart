// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contactcenterinsights_v1_issue_assignment_response.dart';

/// The data for an issue match annotation.
class GoogleCloudContactcenterinsightsV1IssueMatchDataResponse {
  /// Information about the issue's assignment.
  final pulumi.Input<GoogleCloudContactcenterinsightsV1IssueAssignmentResponse> issueAssignment;

  /// Creates a new [GoogleCloudContactcenterinsightsV1IssueMatchDataResponse].
  /// [issueAssignment] Information about the issue's assignment.
  GoogleCloudContactcenterinsightsV1IssueMatchDataResponse({
    required this.issueAssignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issueAssignment': pulumi.Input.mapInputValue<GoogleCloudContactcenterinsightsV1IssueAssignmentResponse, Map<String, dynamic>>(issueAssignment, (value) => value.toMap()),
    };
  }

  factory GoogleCloudContactcenterinsightsV1IssueMatchDataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1IssueMatchDataResponse(
      issueAssignment: pulumi.Input.fromValue(GoogleCloudContactcenterinsightsV1IssueAssignmentResponse.fromMap((map['issueAssignment']! as Map).cast<String, dynamic>())),
    );
  }
}

