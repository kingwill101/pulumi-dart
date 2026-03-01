// ignore_for_file: unused_element, unnecessary_cast


class AppSpecWorkerLogDestinationDatadog {
  /// Datadog API key.
  final String apiKey;
  /// Datadog HTTP log intake endpoint.
  final String? endpoint;

  /// Creates a new [AppSpecWorkerLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] Datadog HTTP log intake endpoint.
  AppSpecWorkerLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory AppSpecWorkerLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestinationDatadog(
      apiKey: map['apiKey'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

