// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The service properties when target service type is SelfHostedServer
class SelfHostedServerResponse {
  /// The endpoint of service.
  final pulumi.Input<String?>? endpoint;
  /// The target service type.
  /// Expected value is 'SelfHostedServer'.
  final pulumi.Input<String> type;

  /// Creates a new [SelfHostedServerResponse].
  /// [endpoint] The endpoint of service.
  /// [type] The target service type.
  const SelfHostedServerResponse({
    this.endpoint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'type': type,
    };
  }

  factory SelfHostedServerResponse.fromMap(Map<String, dynamic> map) {
    return SelfHostedServerResponse(
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
