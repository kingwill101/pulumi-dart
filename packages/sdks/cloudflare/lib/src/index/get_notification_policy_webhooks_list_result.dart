// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNotificationPolicyWebhooksListResult {
  /// Timestamp of when the webhook destination was created.
  final pulumi.Input<String> createdAt;
  /// The unique identifier of a webhook
  final pulumi.Input<String> id;
  /// Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  final pulumi.Input<String> lastFailure;
  /// Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  final pulumi.Input<String> lastSuccess;
  /// The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  final pulumi.Input<String> name;
  /// Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  final pulumi.Input<String> secret;
  /// Type of webhook endpoint.
  /// Available values: "datadog", "discord", "feishu", "gchat", "generic", "opsgenie", "slack", "splunk".
  final pulumi.Input<String> type;
  /// The POST endpoint to call when dispatching a notification.
  final pulumi.Input<String> url;

  /// Creates a new [GetNotificationPolicyWebhooksListResult].
  /// [createdAt] Timestamp of when the webhook destination was created.
  /// [id] The unique identifier of a webhook
  /// [lastFailure] Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  /// [lastSuccess] Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  /// [name] The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  /// [secret] Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  /// [type] Type of webhook endpoint.
  /// [url] The POST endpoint to call when dispatching a notification.
  const GetNotificationPolicyWebhooksListResult({
    required this.createdAt,
    required this.id,
    required this.lastFailure,
    required this.lastSuccess,
    required this.name,
    required this.secret,
    required this.type,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'lastFailure': lastFailure,
      'lastSuccess': lastSuccess,
      'name': name,
      'secret': secret,
      'type': type,
      'url': url,
    };
  }

  factory GetNotificationPolicyWebhooksListResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyWebhooksListResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastFailure: pulumi.Input.fromValue(map['lastFailure'] as String),
      lastSuccess: pulumi.Input.fromValue(map['lastSuccess'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: pulumi.Input.fromValue(map['secret'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
