// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecFunctionLogDestinationDatadog {
  /// Datadog API key.
  final String apiKey;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String? endpoint;

  /// Creates a new [GetAppSpecFunctionLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecFunctionLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory GetAppSpecFunctionLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionLogDestinationDatadog(
      apiKey: map['apiKey'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
    );
  }
}

