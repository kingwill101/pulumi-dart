// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_policies_result_mechanisms_email.dart';
import 'get_notification_policies_result_mechanisms_pagerduty.dart';
import 'get_notification_policies_result_mechanisms_webhook.dart';

class GetNotificationPoliciesResultMechanisms {
  final pulumi.Input<List<GetNotificationPoliciesResultMechanismsEmail>> emails;
  final pulumi.Input<List<GetNotificationPoliciesResultMechanismsPagerduty>> pagerduties;
  final pulumi.Input<List<GetNotificationPoliciesResultMechanismsWebhook>> webhooks;

  /// Creates a new [GetNotificationPoliciesResultMechanisms].
  /// [emails] Required.
  /// [pagerduties] Required.
  /// [webhooks] Required.
  const GetNotificationPoliciesResultMechanisms({
    required this.emails,
    required this.pagerduties,
    required this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': pulumi.Input.mapInputValue<List<GetNotificationPoliciesResultMechanismsEmail>, List<Map<String, dynamic>>>(emails, (value) => pulumi.Input.encodeList<GetNotificationPoliciesResultMechanismsEmail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pagerduties': pulumi.Input.mapInputValue<List<GetNotificationPoliciesResultMechanismsPagerduty>, List<Map<String, dynamic>>>(pagerduties, (value) => pulumi.Input.encodeList<GetNotificationPoliciesResultMechanismsPagerduty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webhooks': pulumi.Input.mapInputValue<List<GetNotificationPoliciesResultMechanismsWebhook>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<GetNotificationPoliciesResultMechanismsWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNotificationPoliciesResultMechanisms.fromMap(Map<String, dynamic> map) {
    return GetNotificationPoliciesResultMechanisms(
      emails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNotificationPoliciesResultMechanismsEmail>(map['emails']!, (value) => GetNotificationPoliciesResultMechanismsEmail.fromMap((value as Map).cast<String, dynamic>()))),
      pagerduties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNotificationPoliciesResultMechanismsPagerduty>(map['pagerduties']!, (value) => GetNotificationPoliciesResultMechanismsPagerduty.fromMap((value as Map).cast<String, dynamic>()))),
      webhooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNotificationPoliciesResultMechanismsWebhook>(map['webhooks']!, (value) => GetNotificationPoliciesResultMechanismsWebhook.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
