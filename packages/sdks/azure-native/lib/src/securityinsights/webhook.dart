// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail about the webhook object.
class Webhook {
  /// A flag to instruct the backend service to rotate webhook secret.
  final pulumi.Input<bool>? rotateWebhookSecret;
  /// Unique identifier for the webhook.
  final pulumi.Input<String>? webhookId;
  /// Time when the webhook secret was updated.
  final pulumi.Input<String>? webhookSecretUpdateTime;
  /// URL that gets invoked by the webhook.
  final pulumi.Input<String>? webhookUrl;

  /// Creates a new [Webhook].
  /// [rotateWebhookSecret] A flag to instruct the backend service to rotate webhook secret.
  /// [webhookId] Unique identifier for the webhook.
  /// [webhookSecretUpdateTime] Time when the webhook secret was updated.
  /// [webhookUrl] URL that gets invoked by the webhook.
  const Webhook({
    this.rotateWebhookSecret,
    this.webhookId,
    this.webhookSecretUpdateTime,
    this.webhookUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rotateWebhookSecret': ?rotateWebhookSecret,
      'webhookId': ?webhookId,
      'webhookSecretUpdateTime': ?webhookSecretUpdateTime,
      'webhookUrl': ?webhookUrl,
    };
  }

  factory Webhook.fromMap(Map<String, dynamic> map) {
    return Webhook(
      rotateWebhookSecret: (() { final guardedValue = map['rotateWebhookSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webhookId: (() { final guardedValue = map['webhookId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretUpdateTime: (() { final guardedValue = map['webhookSecretUpdateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookUrl: (() { final guardedValue = map['webhookUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

