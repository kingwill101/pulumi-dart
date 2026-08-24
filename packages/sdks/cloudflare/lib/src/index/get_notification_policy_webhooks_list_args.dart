// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_notification_policy_webhooks_list_get_notification_policy_webhooks_list_args_doc}
/// Arguments for getNotificationPolicyWebhooksList.
/// {@endtemplate}
/// {@macro pulumi_index_get_notification_policy_webhooks_list_get_notification_policy_webhooks_list_args_doc}
class GetNotificationPolicyWebhooksListArgs {
  /// The account id
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;

  /// Creates a new [GetNotificationPolicyWebhooksListArgs].
  /// [accountId] The account id
  /// [maxItems] Max items to fetch, default: 1000
  const GetNotificationPolicyWebhooksListArgs({
    this.accountId,
    this.maxItems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
    };
  }

  factory GetNotificationPolicyWebhooksListArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyWebhooksListArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
