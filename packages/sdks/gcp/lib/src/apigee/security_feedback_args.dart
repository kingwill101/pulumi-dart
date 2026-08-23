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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the feedback.
  /// [feedbackContexts] One or more attribute/value pairs for constraining the feedback.
  /// [feedbackId] Resource ID of the security feedback.
  /// [feedbackType] The type of feedback being submitted.
  /// [orgId] The Apigee Organization associated with the Apigee Security Feedback,
  /// [reason] The reason for the feedback.
  const SecurityFeedbackArgs({
    this.comment,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      feedbackContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityFeedbackFeedbackContext>(map['feedbackContexts']!, (value) => SecurityFeedbackFeedbackContext.fromMap((value as Map).cast<String, dynamic>()))),
      feedbackId: pulumi.Input.fromValue(map['feedbackId'] as String),
      feedbackType: pulumi.Input.fromValue(map['feedbackType'] as String),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
