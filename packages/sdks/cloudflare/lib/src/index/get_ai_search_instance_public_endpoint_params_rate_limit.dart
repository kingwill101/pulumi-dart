// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchInstancePublicEndpointParamsRateLimit {
  final pulumi.Input<int> periodMs;
  final pulumi.Input<int> requests;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String> technique;

  /// Creates a new [GetAiSearchInstancePublicEndpointParamsRateLimit].
  /// [periodMs] Required.
  /// [requests] Required.
  /// [technique] Available values: "fixed", "sliding".
  const GetAiSearchInstancePublicEndpointParamsRateLimit({
    required this.periodMs,
    required this.requests,
    required this.technique,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periodMs': periodMs,
      'requests': requests,
      'technique': technique,
    };
  }

  factory GetAiSearchInstancePublicEndpointParamsRateLimit.fromMap(Map<String, dynamic> map) {
    return GetAiSearchInstancePublicEndpointParamsRateLimit(
      periodMs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['periodMs'])),
      requests: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['requests'])),
      technique: pulumi.Input.fromValue(map['technique'] as String),
    );
  }
}
