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
    this.comment,
    this.createTime,
    this.displayName,
    this.feedbackContexts,
    this.feedbackId,
    this.feedbackType,
    this.name,
    this.orgId,
    this.reason,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'feedbackContexts':
          ?pulumi.Input.mapOptionalInputValue<
            List<SecurityFeedbackFeedbackContext>,
            List<Map<String, dynamic>>
          >(
            feedbackContexts,
            (value) =>
                pulumi.Input.encodeList<
                  SecurityFeedbackFeedbackContext,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      comment: (() {
        final guardedValue = map['comment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      feedbackContexts: (() {
        final guardedValue = map['feedbackContexts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SecurityFeedbackFeedbackContext>(
            guardedValue,
            (value) => SecurityFeedbackFeedbackContext.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      feedbackId: (() {
        final guardedValue = map['feedbackId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      feedbackType: (() {
        final guardedValue = map['feedbackType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orgId: (() {
        final guardedValue = map['orgId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reason: (() {
        final guardedValue = map['reason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
