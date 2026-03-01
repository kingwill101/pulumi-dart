// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceLogDestinationDatadog {
  /// Datadog API key.
  final String apiKey;
  /// Datadog HTTP log intake endpoint.
  final String? endpoint;

  /// Creates a new [AppSpecServiceLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] Datadog HTTP log intake endpoint.
  AppSpecServiceLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory AppSpecServiceLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestinationDatadog(
      apiKey: map['apiKey'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

