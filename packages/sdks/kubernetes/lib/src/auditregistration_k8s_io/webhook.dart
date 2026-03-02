// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_client_config.dart';
import 'webhook_throttle_config.dart';

/// Webhook holds the configuration of the webhook
class Webhook {
  /// ClientConfig holds the connection parameters for the webhook required
  final pulumi.Input<WebhookClientConfig> clientConfig;
  /// Throttle holds the options for throttling the webhook
  final pulumi.Input<WebhookThrottleConfig>? throttle;

  /// Creates a new [Webhook].
  /// [clientConfig] ClientConfig holds the connection parameters for the webhook required
  /// [throttle] Throttle holds the options for throttling the webhook
  Webhook({
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
      clientConfig: (WebhookClientConfig.fromMap((map['clientConfig'] as Map).cast<String, dynamic>())).input(),
      throttle: map['throttle'] == null ? null : (WebhookThrottleConfig.fromMap((map['throttle'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

