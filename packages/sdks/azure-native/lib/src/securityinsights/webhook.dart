// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Detail about the webhook object.
class Webhook {
  /// A flag to instruct the backend service to rotate webhook secret.
  final pulumi.Input<bool>? rotateWebhookSecret;

  /// Creates a new [Webhook].
  /// [rotateWebhookSecret] A flag to instruct the backend service to rotate webhook secret.
  const Webhook({
    this.rotateWebhookSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rotateWebhookSecret': ?rotateWebhookSecret,
    };
  }

  factory Webhook.fromMap(Map<String, dynamic> map) {
    return Webhook(
      rotateWebhookSecret: (() { final guardedValue = map['rotateWebhookSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
