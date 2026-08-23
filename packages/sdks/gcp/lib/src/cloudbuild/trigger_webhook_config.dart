// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerWebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  final pulumi.Input<String> secret;
  /// (Output)
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final pulumi.Input<String>? state;

  /// Creates a new [TriggerWebhookConfig].
  /// [secret] Resource name for the secret required as a URL parameter.
  /// [state] (Output)
  const TriggerWebhookConfig({
    required this.secret,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'state': ?state,
    };
  }

  factory TriggerWebhookConfig.fromMap(Map<String, dynamic> map) {
    return TriggerWebhookConfig(
      secret: pulumi.Input.fromValue(map['secret'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
