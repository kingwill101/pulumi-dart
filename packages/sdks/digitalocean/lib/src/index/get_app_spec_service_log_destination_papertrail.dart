// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecServiceLogDestinationPapertrail {
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String endpoint;

  /// Creates a new [GetAppSpecServiceLogDestinationPapertrail].
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecServiceLogDestinationPapertrail({
    required this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
    };
  }

  factory GetAppSpecServiceLogDestinationPapertrail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationPapertrail(
      endpoint: map['endpoint'] as String,
    );
  }
}

