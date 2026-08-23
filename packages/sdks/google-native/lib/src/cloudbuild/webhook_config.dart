// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'webhook_config_state.dart';

/// WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger's webhook URL.
class WebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  final pulumi.Input<String> secret;
  /// Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  final pulumi.Input<WebhookConfigState>? state;

  /// Creates a new [WebhookConfig].
  /// [secret] Resource name for the secret required as a URL parameter.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  const WebhookConfig({
    required this.secret,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'state': ?pulumi.Input.mapOptionalInputValue<WebhookConfigState, String>(state, (value) => value.wireValue),
    };
  }

  factory WebhookConfig.fromMap(Map<String, dynamic> map) {
    return WebhookConfig(
      secret: pulumi.Input.fromValue(map['secret'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebhookConfigState.fromValue(guardedValue as String)); })(),
    );
  }
}
