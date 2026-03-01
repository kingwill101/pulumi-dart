// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_feedback_feedback_context.dart';

/// Input properties used for looking up and filtering SecurityFeedback resources.
class SecurityFeedbackState {
  /// Optional text the user can provide for additional, unstructured context.
  final pulumi.Input<String>? comment;
  /// The time when this specific feedback id was created.
  final pulumi.Input<String>? createTime;
  /// The display name of the feedback.
  final pulumi.Input<String>? displayName;
  /// One or more attribute/value pairs for constraining the feedback.
  /// Structure is documented below.
  final pulumi.Input<List<SecurityFeedbackFeedbackContext>>? feedbackContexts;
  /// Resource ID of the security feedback.
  final pulumi.Input<String>? feedbackId;
  /// The type of feedback being submitted.
  /// Possible values are: `EXCLUDED_DETECTION`.
  final pulumi.Input<String>? feedbackType;
  /// Name of the security feedback resource,
  /// in the format `organizations/{{org_name}}/securityFeedback/{{feedback_id}}`.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee Security Feedback,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String>? orgId;
  /// The reason for the feedback.
  /// Possible values are: `INTERNAL_SYSTEM`, `NON_RISK_CLIENT`, `NAT`, `PENETRATION_TEST`, `OTHER`.
  final pulumi.Input<String>? reason;
  /// The time when this specific feedback id was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SecurityFeedbackState].
  /// [comment] Optional text the user can provide for additional, unstructured context.
  /// [createTime] The time when this specific feedback id was created.
  /// [displayName] The display name of the feedback.
  /// [feedbackContexts] One or more attribute/value pairs for constraining the feedback.
  /// [feedbackId] Resource ID of the security feedback.
  /// [feedbackType] The type of feedback being submitted.
  /// [name] Name of the security feedback resource,
  /// [orgId] The Apigee Organization associated with the Apigee Security Feedback,
  /// [reason] The reason for the feedback.
  /// [updateTime] The time when this specific feedback id was updated.
  SecurityFeedbackState({
    pulumi.Output<String>? comment,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<SecurityFeedbackFeedbackContext>>? feedbackContexts,
    pulumi.Output<String>? feedbackId,
    pulumi.Output<String>? feedbackType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
    pulumi.Output<String>? reason,
    pulumi.Output<String>? updateTime,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      feedbackContexts = pulumi.Input.asOptionalInput<List<SecurityFeedbackFeedbackContext>>(feedbackContexts),
      feedbackId = pulumi.Input.asOptionalInput<String>(feedbackId),
      feedbackType = pulumi.Input.asOptionalInput<String>(feedbackType),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'feedbackContexts': ?pulumi.Input.mapOptionalInputValue<List<SecurityFeedbackFeedbackContext>, List<Map<String, dynamic>>>(feedbackContexts, (value) => pulumi.Input.encodeList<SecurityFeedbackFeedbackContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'feedbackId': ?feedbackId,
      'feedbackType': ?feedbackType,
      'name': ?name,
      'orgId': ?orgId,
      'reason': ?reason,
      'updateTime': ?updateTime,
    };
  }

  factory SecurityFeedbackState.fromMap(Map<String, dynamic> map) {
    return SecurityFeedbackState(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      feedbackContexts: map['feedbackContexts'] == null ? null : pulumi.Output.create<List<SecurityFeedbackFeedbackContext>>(pulumi.Input.decodeList<SecurityFeedbackFeedbackContext>(map['feedbackContexts'], (value) => SecurityFeedbackFeedbackContext.fromMap((value as Map).cast<String, dynamic>()))),
      feedbackId: map['feedbackId'] == null ? null : pulumi.Output.create<String>(map['feedbackId'] as String),
      feedbackType: map['feedbackType'] == null ? null : pulumi.Output.create<String>(map['feedbackType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      reason: map['reason'] == null ? null : pulumi.Output.create<String>(map['reason'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

