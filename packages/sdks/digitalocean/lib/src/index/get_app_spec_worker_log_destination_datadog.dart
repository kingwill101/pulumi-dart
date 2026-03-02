// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecWorkerLogDestinationDatadog {
  /// Datadog API key.
  final pulumi.Input<String> apiKey;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [GetAppSpecWorkerLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  GetAppSpecWorkerLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory GetAppSpecWorkerLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestinationDatadog(
      apiKey: (map['apiKey'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
    );
  }
}

