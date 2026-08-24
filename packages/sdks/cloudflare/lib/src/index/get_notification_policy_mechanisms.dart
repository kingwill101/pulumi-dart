// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_policy_mechanisms_email.dart';
import 'get_notification_policy_mechanisms_pagerduty.dart';
import 'get_notification_policy_mechanisms_webhook.dart';

class GetNotificationPolicyMechanisms {
  final pulumi.Input<List<GetNotificationPolicyMechanismsEmail>> emails;
  final pulumi.Input<List<GetNotificationPolicyMechanismsPagerduty>> pagerduties;
  final pulumi.Input<List<GetNotificationPolicyMechanismsWebhook>> webhooks;

  /// Creates a new [GetNotificationPolicyMechanisms].
  /// [emails] Required.
  /// [pagerduties] Required.
  /// [webhooks] Required.
  const GetNotificationPolicyMechanisms({
    required this.emails,
    required this.pagerduties,
    required this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': pulumi.Input.mapInputValue<List<GetNotificationPolicyMechanismsEmail>, List<Map<String, dynamic>>>(emails, (value) => pulumi.Input.encodeList<GetNotificationPolicyMechanismsEmail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pagerduties': pulumi.Input.mapInputValue<List<GetNotificationPolicyMechanismsPagerduty>, List<Map<String, dynamic>>>(pagerduties, (value) => pulumi.Input.encodeList<GetNotificationPolicyMechanismsPagerduty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhooks': pulumi.Input.mapInputValue<List<GetNotificationPolicyMechanismsWebhook>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<GetNotificationPolicyMechanismsWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNotificationPolicyMechanisms.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyMechanisms(
      emails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNotificationPolicyMechanismsEmail>(map['emails']!, (value) => GetNotificationPolicyMechanismsEmail.fromMap((value as Map).cast<String, dynamic>()))),
      pagerduties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNotificationPolicyMechanismsPagerduty>(map['pagerduties']!, (value) => GetNotificationPolicyMechanismsPagerduty.fromMap((value as Map).cast<String, dynamic>()))),
      webhooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNotificationPolicyMechanismsWebhook>(map['webhooks']!, (value) => GetNotificationPolicyMechanismsWebhook.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
