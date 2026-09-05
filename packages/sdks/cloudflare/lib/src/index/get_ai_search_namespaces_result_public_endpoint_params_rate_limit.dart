// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiSearchNamespacesResultPublicEndpointParamsRateLimit {
  final pulumi.Input<int> periodMs;
  final pulumi.Input<int> requests;
  /// Available values: "fixed", "sliding".
  final pulumi.Input<String> technique;

  /// Creates a new [GetAiSearchNamespacesResultPublicEndpointParamsRateLimit].
  /// [periodMs] Required.
  /// [requests] Required.
  /// [technique] Available values: "fixed", "sliding".
  const GetAiSearchNamespacesResultPublicEndpointParamsRateLimit({
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

  factory GetAiSearchNamespacesResultPublicEndpointParamsRateLimit.fromMap(Map<String, dynamic> map) {
    return GetAiSearchNamespacesResultPublicEndpointParamsRateLimit(
      periodMs: pulumi.Input.fromValue((map['periodMs'] as num).toInt()),
      requests: pulumi.Input.fromValue((map['requests'] as num).toInt()),
      technique: pulumi.Input.fromValue(map['technique'] as String),
    );
  }
}
