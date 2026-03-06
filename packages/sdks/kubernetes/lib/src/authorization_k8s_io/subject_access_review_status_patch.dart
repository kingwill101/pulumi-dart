// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SubjectAccessReviewStatus
class SubjectAccessReviewStatusPatch {
  /// Allowed is required. True if the action would be allowed, false otherwise.
  final pulumi.Input<bool>? allowed;
  /// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  final pulumi.Input<bool>? denied;
  /// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  final pulumi.Input<String>? evaluationError;
  /// Reason is optional.  It indicates why a request was allowed or denied.
  final pulumi.Input<String>? reason;

  /// Creates a new [SubjectAccessReviewStatusPatch].
  /// [allowed] Allowed is required. True if the action would be allowed, false otherwise.
  /// [denied] Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  /// [evaluationError] EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  /// [reason] Reason is optional.  It indicates why a request was allowed or denied.
  const SubjectAccessReviewStatusPatch({
    this.allowed,
    this.denied,
    this.evaluationError,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': ?allowed,
      'denied': ?denied,
      'evaluationError': ?evaluationError,
      'reason': ?reason,
    };
  }

  factory SubjectAccessReviewStatusPatch.fromMap(Map<String, dynamic> map) {
    return SubjectAccessReviewStatusPatch(
      allowed: (() { final guardedValue = map['allowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      denied: (() { final guardedValue = map['denied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evaluationError: (() { final guardedValue = map['evaluationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

