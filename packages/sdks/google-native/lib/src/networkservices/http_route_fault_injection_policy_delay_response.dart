// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class HttpRouteFaultInjectionPolicyDelayResponse {
  /// Specify a fixed delay before forwarding the request.
  final pulumi.Input<String> fixedDelay;
  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final pulumi.Input<int> percentage;

  /// Creates a new [HttpRouteFaultInjectionPolicyDelayResponse].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  const HttpRouteFaultInjectionPolicyDelayResponse({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': fixedDelay,
      'percentage': percentage,
    };
  }

  factory HttpRouteFaultInjectionPolicyDelayResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteFaultInjectionPolicyDelayResponse(
      fixedDelay: pulumi.Input.fromValue(map['fixedDelay'] as String),
      percentage: pulumi.Input.fromValue(map['percentage'] as int),
    );
  }
}
