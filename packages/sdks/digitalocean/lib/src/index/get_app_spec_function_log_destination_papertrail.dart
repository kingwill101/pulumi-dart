// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecFunctionLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String endpoint;

  /// Creates a new [GetAppSpecFunctionLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecFunctionLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory GetAppSpecFunctionLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

