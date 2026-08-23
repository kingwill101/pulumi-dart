// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1 {
  /// Specify a fixed delay before forwarding the request.
  final pulumi.Input<String> fixedDelay;
  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final pulumi.Input<int> percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  const GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': fixedDelay,
      'percentage': percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyDelayResponseNetworkservicesV1beta1(
      fixedDelay: pulumi.Input.fromValue(map['fixedDelay'] as String),
      percentage: pulumi.Input.fromValue(map['percentage'] as int),
    );
  }
}
