// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_patch.dart';
import 'webhook_patch.dart';

/// AuditSinkSpec holds the spec for the audit sink
class AuditSinkSpecPatch {
  /// Policy defines the policy for selecting which events should be sent to the webhook required
  final pulumi.Input<PolicyPatch>? policy;
  /// Webhook to send events required
  final pulumi.Input<WebhookPatch>? webhook;

  /// Creates a new [AuditSinkSpecPatch].
  /// [policy] Policy defines the policy for selecting which events should be sent to the webhook required
  /// [webhook] Webhook to send events required
  AuditSinkSpecPatch({
    this.policy,
    this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<PolicyPatch, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'webhook': ?pulumi.Input.mapOptionalInputValue<WebhookPatch, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory AuditSinkSpecPatch.fromMap(Map<String, dynamic> map) {
    return AuditSinkSpecPatch(
      policy: map['policy'] == null ? null : (PolicyPatch.fromMap((map['policy'] as Map).cast<String, dynamic>())).input(),
      webhook: map['webhook'] == null ? null : (WebhookPatch.fromMap((map['webhook'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

