// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstancePublicEndpointParamsRateLimit {
  final pulumi.Input<int?>? periodMs;
  final pulumi.Input<int?>? requests;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String?>? technique;

  /// Creates a new [AiSearchInstancePublicEndpointParamsRateLimit].
  /// [periodMs] Optional.
  /// [requests] Optional.
  /// [technique] Available values: "fixed", "sliding".
  const AiSearchInstancePublicEndpointParamsRateLimit({
    this.periodMs,
    this.requests,
    this.technique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periodMs': ?periodMs,
      'requests': ?requests,
      'technique': ?technique,
    };
  }

  factory AiSearchInstancePublicEndpointParamsRateLimit.fromMap(Map<String, dynamic> map) {
    return AiSearchInstancePublicEndpointParamsRateLimit(
      periodMs: (() { final guardedValue = map['periodMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      technique: (() { final guardedValue = map['technique']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
