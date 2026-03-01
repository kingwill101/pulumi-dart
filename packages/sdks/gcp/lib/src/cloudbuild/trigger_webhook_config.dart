// ignore_for_file: unused_element, unnecessary_cast


class TriggerWebhookConfig {
  /// Resource name for the secret required as a URL parameter.
  final String secret;
  /// (Output)
  /// Potential issues with the underlying Pub/Sub subscription configuration.
  /// Only populated on get requests.
  final String? state;

  /// Creates a new [TriggerWebhookConfig].
  /// [secret] Resource name for the secret required as a URL parameter.
  /// [state] (Output)
  TriggerWebhookConfig({
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
      secret: map['secret'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

