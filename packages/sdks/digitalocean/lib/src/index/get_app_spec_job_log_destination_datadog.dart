// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecJobLogDestinationDatadog {
  /// Datadog API key.
  final pulumi.Input<String> apiKey;

  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [GetAppSpecJobLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://&lt;host&gt;:&lt;port&gt;.
  GetAppSpecJobLogDestinationDatadog({required this.apiKey, this.endpoint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiKey': apiKey, 'endpoint': ?endpoint};
  }

  factory GetAppSpecJobLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestinationDatadog(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
