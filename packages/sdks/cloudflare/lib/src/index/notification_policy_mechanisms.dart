// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_policy_mechanisms_email.dart';
import 'notification_policy_mechanisms_pagerduty.dart';
import 'notification_policy_mechanisms_webhook.dart';

class NotificationPolicyMechanisms {
  final pulumi.Input<List<NotificationPolicyMechanismsEmail>?>? emails;
  final pulumi.Input<List<NotificationPolicyMechanismsPagerduty>?>? pagerduties;
  final pulumi.Input<List<NotificationPolicyMechanismsWebhook>?>? webhooks;

  /// Creates a new [NotificationPolicyMechanisms].
  /// [emails] Optional.
  /// [pagerduties] Optional.
  /// [webhooks] Optional.
  const NotificationPolicyMechanisms({
    this.emails,
    this.pagerduties,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?pulumi.Input.mapOptionalInputValue<List<NotificationPolicyMechanismsEmail>, List<Map<String, dynamic>>>(emails, (value) => pulumi.Input.encodeList<NotificationPolicyMechanismsEmail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pagerduties': ?pulumi.Input.mapOptionalInputValue<List<NotificationPolicyMechanismsPagerduty>, List<Map<String, dynamic>>>(pagerduties, (value) => pulumi.Input.encodeList<NotificationPolicyMechanismsPagerduty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<NotificationPolicyMechanismsWebhook>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<NotificationPolicyMechanismsWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NotificationPolicyMechanisms.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyMechanisms(
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPolicyMechanismsEmail>(guardedValue, (value) => NotificationPolicyMechanismsEmail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pagerduties: (() { final guardedValue = map['pagerduties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPolicyMechanismsPagerduty>(guardedValue, (value) => NotificationPolicyMechanismsPagerduty.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webhooks: (() { final guardedValue = map['webhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPolicyMechanismsWebhook>(guardedValue, (value) => NotificationPolicyMechanismsWebhook.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
