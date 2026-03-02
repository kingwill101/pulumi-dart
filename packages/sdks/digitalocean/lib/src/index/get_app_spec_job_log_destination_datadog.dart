// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecJobLogDestinationDatadog {
  /// Datadog API key.
  final pulumi.Input<String> apiKey;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [GetAppSpecJobLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecJobLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory GetAppSpecJobLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestinationDatadog(
      apiKey: (map['apiKey'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
    );
  }
}

