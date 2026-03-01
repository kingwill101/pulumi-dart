// ignore_for_file: unused_element, unnecessary_cast

import 'policy_patch.dart';
import 'webhook_patch.dart';

/// AuditSinkSpec holds the spec for the audit sink
class AuditSinkSpecPatch {
  /// Policy defines the policy for selecting which events should be sent to the webhook required
  final PolicyPatch? policy;
  /// Webhook to send events required
  final WebhookPatch? webhook;

  /// Creates a new [AuditSinkSpecPatch].
  /// [policy] Policy defines the policy for selecting which events should be sent to the webhook required
  /// [webhook] Webhook to send events required
  AuditSinkSpecPatch({
    this.policy,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy == null ? null : policy!.toMap(),
      'webhook': ?webhook == null ? null : webhook!.toMap(),
    };
  }

  factory AuditSinkSpecPatch.fromMap(Map<String, dynamic> map) {
    return AuditSinkSpecPatch(
      policy: map['policy'] == null ? null : PolicyPatch.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      webhook: map['webhook'] == null ? null : WebhookPatch.fromMap((map['webhook'] as Map).cast<String, dynamic>()),
    );
  }
}

