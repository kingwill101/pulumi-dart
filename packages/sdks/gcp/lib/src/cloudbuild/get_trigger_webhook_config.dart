// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerWebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  final pulumi.Input<String> secret;
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final pulumi.Input<String> state;

  /// Creates a new [GetTriggerWebhookConfig].
  /// [secret] Resource name for the secret required as a URL parameter.
  /// [state] Potential issues with the underlying Pub/Sub subscription configuration.
  GetTriggerWebhookConfig({
    required this.secret,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secret': secret,
      'state': state,
    };
  }

  factory GetTriggerWebhookConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerWebhookConfig(
      secret: (map['secret'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

