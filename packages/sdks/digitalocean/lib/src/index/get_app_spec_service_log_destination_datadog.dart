// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceLogDestinationDatadog {
  /// Datadog API key.
  final pulumi.Input<String> apiKey;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final pulumi.Input<String>? endpoint;

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
      apiKey: (map['apiKey'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
    );
  }
}

