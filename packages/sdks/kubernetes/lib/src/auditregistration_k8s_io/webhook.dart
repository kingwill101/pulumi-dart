// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_client_config.dart';
import 'webhook_throttle_config.dart';

/// Webhook holds the configuration of the webhook
class Webhook {
  /// ClientConfig holds the connection parameters for the webhook required
  final pulumi.Input<WebhookClientConfig> clientConfig;
  /// Throttle holds the options for throttling the webhook
  final pulumi.Input<WebhookThrottleConfig?>? throttle;

  /// Creates a new [Webhook].
  /// [clientConfig] ClientConfig holds the connection parameters for the webhook required
  /// [throttle] Throttle holds the options for throttling the webhook
  const Webhook({
    required this.clientConfig,
    this.throttle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfig': pulumi.Input.mapInputValue<WebhookClientConfig, Map<String, dynamic>>(clientConfig, (value) => value.toMap()),
      'throttle': ?pulumi.Input.mapOptionalInputValue<WebhookThrottleConfig, Map<String, dynamic>>(throttle, (value) => value.toMap()),
    };
  }

  factory Webhook.fromMap(Map<String, dynamic> map) {
    return Webhook(
      clientConfig: pulumi.Input.fromValue(WebhookClientConfig.fromMap((map['clientConfig']! as Map).cast<String, dynamic>())),
      throttle: (() { final guardedValue = map['throttle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookThrottleConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
