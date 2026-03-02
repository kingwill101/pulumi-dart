// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_feedback_feedback_context.dart';

/// {@template pulumi_apigee_security_feedback_security_feedback_args_doc}
/// The set of arguments for SecurityFeedback.
/// {@endtemplate}
/// {@macro pulumi_apigee_security_feedback_security_feedback_args_doc}
class SecurityFeedbackArgs {
  /// Optional text the user can provide for additional, unstructured context.
  final pulumi.Input<String>? comment;
  /// The display name of the feedback.
  final pulumi.Input<String>? displayName;
  /// One or more attribute/value pairs for constraining the feedback.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityFeedbackFeedbackContext>> feedbackContexts;
  /// Resource ID of the security feedback.
  final pulumi.Input<String> feedbackId;
  /// The type of feedback being submitted.
  /// Possible values are: `EXCLUDED_DETECTION`.
  final pulumi.Input<String> feedbackType;
  /// The Apigee Organization associated with the Apigee Security Feedback,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// The reason for the feedback.
  /// Possible values are: `INTERNAL_SYSTEM`, `NON_RISK_CLIENT`, `NAT`, `PENETRATION_TEST`, `OTHER`.
  final pulumi.Input<String>? reason;

  /// Creates a new [SecurityFeedbackArgs].
  /// [comment] Optional text the user can provide for additional, unstructured context.
  /// [displayName] The display name of the feedback.
  /// [feedbackContexts] One or more attribute/value pairs for constraining the feedback.
  /// [feedbackId] Resource ID of the security feedback.
  /// [feedbackType] The type of feedback being submitted.
  /// [orgId] The Apigee Organization associated with the Apigee Security Feedback,
  /// [reason] The reason for the feedback.
  SecurityFeedbackArgs({
    this.comment,
    this.displayName,
    required this.feedbackContexts,
    required this.feedbackId,
    required this.feedbackType,
    required this.orgId,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'displayName': ?displayName,
      'feedbackContexts': pulumi.Input.mapInputValue<List<SecurityFeedbackFeedbackContext>, List<Map<String, dynamic>>>(feedbackContexts, (value) => pulumi.Input.encodeList<SecurityFeedbackFeedbackContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'feedbackId': feedbackId,
      'feedbackType': feedbackType,
      'orgId': orgId,
      'reason': ?reason,
    };
  }

  factory SecurityFeedbackArgs.fromMap(Map<String, dynamic> map) {
    return SecurityFeedbackArgs(
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      feedbackContexts: (pulumi.Input.decodeList<SecurityFeedbackFeedbackContext>(map['feedbackContexts'], (value) => SecurityFeedbackFeedbackContext.fromMap((value as Map).cast<String, dynamic>()))).input(),
      feedbackId: (map['feedbackId'] as String).input(),
      feedbackType: (map['feedbackType'] as String).input(),
      orgId: (map['orgId'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
    );
  }
}

