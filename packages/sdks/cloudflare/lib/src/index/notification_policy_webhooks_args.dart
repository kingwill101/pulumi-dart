// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_notification_policy_webhooks_notification_policy_webhooks_args_doc}
/// The set of arguments for NotificationPolicyWebhooks.
/// {@endtemplate}
/// {@macro pulumi_index_notification_policy_webhooks_notification_policy_webhooks_args_doc}
class NotificationPolicyWebhooksArgs {
  /// The account id
  final pulumi.Input<String> accountId;
  /// The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  final pulumi.Input<String> name;
  /// Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  final pulumi.Input<String?>? secret;
  /// The POST endpoint to call when dispatching a notification.
  final pulumi.Input<String> url;

  /// Creates a new [NotificationPolicyWebhooksArgs].
  /// [accountId] The account id
  /// [name] The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  /// [secret] Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  /// [url] The POST endpoint to call when dispatching a notification.
  const NotificationPolicyWebhooksArgs({
    required this.accountId,
    required this.name,
    this.secret,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'secret': ?secret,
      'url': url,
    };
  }

  factory NotificationPolicyWebhooksArgs.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyWebhooksArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
