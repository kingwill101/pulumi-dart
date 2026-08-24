// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNotificationPolicyWebhooks.
class GetNotificationPolicyWebhooksResult {
  /// The account id
  final String? accountId;
  /// Timestamp of when the webhook destination was created.
  final String? createdAt;
  /// The unique identifier of a webhook
  final String? id;
  /// Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  final String? lastFailure;
  /// Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  final String? lastSuccess;
  /// The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  final String? name;
  /// Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  final String? secret;
  /// Type of webhook endpoint.
  /// Available values: "datadog", "discord", "feishu", "gchat", "generic", "opsgenie", "slack", "splunk".
  final String? type;
  /// The POST endpoint to call when dispatching a notification.
  final String? url;
  /// The unique identifier of a webhook
  final String? webhookId;

  /// Creates a new [GetNotificationPolicyWebhooksResult].
  /// [accountId] The account id
  /// [createdAt] Timestamp of when the webhook destination was created.
  /// [id] The unique identifier of a webhook
  /// [lastFailure] Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  /// [lastSuccess] Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  /// [name] The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  /// [secret] Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  /// [type] Type of webhook endpoint.
  /// [url] The POST endpoint to call when dispatching a notification.
  /// [webhookId] The unique identifier of a webhook
  const GetNotificationPolicyWebhooksResult({
    this.accountId,
    this.createdAt,
    this.id,
    this.lastFailure,
    this.lastSuccess,
    this.name,
    this.secret,
    this.type,
    this.url,
    this.webhookId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'id': ?id,
      'lastFailure': ?lastFailure,
      'lastSuccess': ?lastSuccess,
      'name': ?name,
      'secret': ?secret,
      'type': ?type,
      'url': ?url,
      'webhookId': ?webhookId,
    };
  }

  factory GetNotificationPolicyWebhooksResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationPolicyWebhooksResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastFailure: (() { final guardedValue = map['lastFailure']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSuccess: (() { final guardedValue = map['lastSuccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webhookId: (() { final guardedValue = map['webhookId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
