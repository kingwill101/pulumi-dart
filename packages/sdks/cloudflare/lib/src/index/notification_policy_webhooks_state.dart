// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NotificationPolicyWebhooks resources.
class NotificationPolicyWebhooksState {
  /// The account id
  final pulumi.Input<String?>? accountId;
  /// Timestamp of when the webhook destination was created.
  final pulumi.Input<String?>? createdAt;
  /// Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  final pulumi.Input<String?>? lastFailure;
  /// Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  final pulumi.Input<String?>? lastSuccess;
  /// The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  final pulumi.Input<String?>? name;
  /// Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  final pulumi.Input<String?>? secret;
  /// Type of webhook endpoint.
  /// Available values: "datadog", "discord", "feishu", "gchat", "generic", "opsgenie", "slack", "splunk".
  final pulumi.Input<String?>? type;
  /// The POST endpoint to call when dispatching a notification.
  final pulumi.Input<String?>? url;

  /// Creates a new [NotificationPolicyWebhooksState].
  /// [accountId] The account id
  /// [createdAt] Timestamp of when the webhook destination was created.
  /// [lastFailure] Timestamp of the last time an attempt to dispatch a notification to this webhook failed.
  /// [lastSuccess] Timestamp of the last time Cloudflare was able to successfully dispatch a notification using this webhook.
  /// [name] The name of the webhook destination. This will be included in the request body when you receive a webhook notification.
  /// [secret] Optional secret that will be passed in the `cf-webhook-auth` header when dispatching generic webhook notifications or formatted for supported destinations. Secrets are not returned in any API response body.
  /// [type] Type of webhook endpoint.
  /// [url] The POST endpoint to call when dispatching a notification.
  const NotificationPolicyWebhooksState({
    this.accountId,
    this.createdAt,
    this.lastFailure,
    this.lastSuccess,
    this.name,
    this.secret,
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'lastFailure': ?lastFailure,
      'lastSuccess': ?lastSuccess,
      'name': ?name,
      'secret': ?secret,
      'type': ?type,
      'url': ?url,
    };
  }

  factory NotificationPolicyWebhooksState.fromMap(Map<String, dynamic> map) {
    return NotificationPolicyWebhooksState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastFailure: (() { final guardedValue = map['lastFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSuccess: (() { final guardedValue = map['lastSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
