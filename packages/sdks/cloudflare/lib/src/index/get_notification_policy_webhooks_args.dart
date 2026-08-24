// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_notification_policy_webhooks_get_notification_policy_webhooks_args_doc}
/// Arguments for getNotificationPolicyWebhooks.
/// {@endtemplate}
/// {@macro pulumi_index_get_notification_policy_webhooks_get_notification_policy_webhooks_args_doc}
class GetNotificationPolicyWebhooksArgs {
  /// The account id
  final pulumi.Input<String?>? accountId;
  /// The unique identifier of a webhook
  final pulumi.Input<String> webhookId;

  /// Creates a new [GetNotificationPolicyWebhooksArgs].
  /// [accountId] The account id
  /// [webhookId] The unique identifier of a webhook
  const GetNotificationPolicyWebhooksArgs({
    this.accountId,
    required this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'webhookId': webhookId,
    };
  }

  factory GetNotificationPolicyWebhooksArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyWebhooksArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as String),
    );
  }
}
