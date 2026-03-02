// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecJobLogDestinationDatadog {
  /// Datadog API key.
  final pulumi.Input<String> apiKey;
  /// Datadog HTTP log intake endpoint.
  final pulumi.Input<String>? endpoint;

  /// Creates a new [AppSpecJobLogDestinationDatadog].
  /// [apiKey] Datadog API key.
  /// [endpoint] Datadog HTTP log intake endpoint.
  AppSpecJobLogDestinationDatadog({
    required this.apiKey,
    this.endpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'endpoint': ?endpoint,
    };
  }

  factory AppSpecJobLogDestinationDatadog.fromMap(Map<String, dynamic> map) {
    return AppSpecJobLogDestinationDatadog(
      apiKey: (map['apiKey'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
    );
  }
}

