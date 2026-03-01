// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecServiceLogDestinationDatadog {
  /// Datadog API key.
  final String apiKey;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String? endpoint;

  /// Creates a new [GetAppSpecServiceLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecServiceLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory GetAppSpecServiceLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationDatadog(
      apiKey: map['apiKey'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

