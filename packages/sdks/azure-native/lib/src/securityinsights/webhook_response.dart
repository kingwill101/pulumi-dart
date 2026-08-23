// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail about the webhook object.
class WebhookResponse {
  /// A flag to instruct the backend service to rotate webhook secret.
  final pulumi.Input<bool>? rotateWebhookSecret;
  /// Unique identifier for the webhook.
  final pulumi.Input<String> webhookId;
  /// Time when the webhook secret was updated.
  final pulumi.Input<String> webhookSecretUpdateTime;
  /// URL that gets invoked by the webhook.
  final pulumi.Input<String> webhookUrl;

  /// Creates a new [WebhookResponse].
  /// [rotateWebhookSecret] A flag to instruct the backend service to rotate webhook secret.
  /// [webhookId] Unique identifier for the webhook.
  /// [webhookSecretUpdateTime] Time when the webhook secret was updated.
  /// [webhookUrl] URL that gets invoked by the webhook.
  const WebhookResponse({
    this.rotateWebhookSecret,
    required this.webhookId,
    required this.webhookSecretUpdateTime,
    required this.webhookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rotateWebhookSecret': ?rotateWebhookSecret,
      'webhookId': webhookId,
      'webhookSecretUpdateTime': webhookSecretUpdateTime,
      'webhookUrl': webhookUrl,
    };
  }

  factory WebhookResponse.fromMap(Map<String, dynamic> map) {
    return WebhookResponse(
      rotateWebhookSecret: (() { final guardedValue = map['rotateWebhookSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as String),
      webhookSecretUpdateTime: pulumi.Input.fromValue(map['webhookSecretUpdateTime'] as String),
      webhookUrl: pulumi.Input.fromValue(map['webhookUrl'] as String),
    );
  }
}
