// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy.dart';
import 'webhook.dart';

/// AuditSinkSpec holds the spec for the audit sink
class AuditSinkSpec {
  /// Policy defines the policy for selecting which events should be sent to the webhook required
  final pulumi.Input<Policy> policy;
  /// Webhook to send events required
  final pulumi.Input<Webhook> webhook;

  /// Creates a new [AuditSinkSpec].
  /// [policy] Policy defines the policy for selecting which events should be sent to the webhook required
  /// [webhook] Webhook to send events required
  AuditSinkSpec({
    required this.policy,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': pulumi.Input.mapInputValue<Policy, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'webhook': pulumi.Input.mapInputValue<Webhook, Map<String, dynamic>>(webhook, (value) => value.toMap()),
    };
  }

  factory AuditSinkSpec.fromMap(Map<String, dynamic> map) {
    return AuditSinkSpec(
      policy: pulumi.Input.fromValue(Policy.fromMap((map['policy']! as Map).cast<String, dynamic>())),
      webhook: pulumi.Input.fromValue(Webhook.fromMap((map['webhook']! as Map).cast<String, dynamic>())),
    );
  }
}

