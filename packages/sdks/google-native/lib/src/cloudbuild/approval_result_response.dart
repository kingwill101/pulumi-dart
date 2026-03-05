// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ApprovalResult describes the decision and associated metadata of a manual approval of a build.
class ApprovalResultResponse {
  /// The time when the approval decision was made.
  final pulumi.Input<String> approvalTime;
  /// Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.
  final pulumi.Input<String> approverAccount;
  /// Optional. An optional comment for this manual approval result.
  final pulumi.Input<String> comment;
  /// The decision of this manual approval.
  final pulumi.Input<String> decision;
  /// Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.
  final pulumi.Input<String> url;

  /// Creates a new [ApprovalResultResponse].
  /// [approvalTime] The time when the approval decision was made.
  /// [approverAccount] Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.
  /// [comment] Optional. An optional comment for this manual approval result.
  /// [decision] The decision of this manual approval.
  /// [url] Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.
  ApprovalResultResponse({
    required this.approvalTime,
    required this.approverAccount,
    required this.comment,
    required this.decision,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalTime': approvalTime,
      'approverAccount': approverAccount,
      'comment': comment,
      'decision': decision,
      'url': url,
    };
  }

  factory ApprovalResultResponse.fromMap(Map<String, dynamic> map) {
    return ApprovalResultResponse(
      approvalTime: pulumi.Input.fromValue(map['approvalTime'] as String),
      approverAccount: pulumi.Input.fromValue(map['approverAccount'] as String),
      comment: pulumi.Input.fromValue(map['comment'] as String),
      decision: pulumi.Input.fromValue(map['decision'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

