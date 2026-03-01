// ignore_for_file: unused_element, unnecessary_cast


class AppSpecFunctionLogDestinationDatadog {
  /// Datadog API key.
  final String apiKey;
  /// Datadog HTTP log intake endpoint.
  final String? endpoint;

  /// Creates a new [AppSpecFunctionLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] Datadog HTTP log intake endpoint.
  AppSpecFunctionLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory AppSpecFunctionLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionLogDestinationDatadog(
      apiKey: map['apiKey'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

