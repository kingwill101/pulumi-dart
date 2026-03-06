// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
class GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1 {
  /// Specify a fixed delay before forwarding the request.
  final pulumi.Input<String>? fixedDelay;
  /// The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  final pulumi.Input<int>? percentage;

  /// Creates a new [GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected. The value must be between [0, 100]
  const GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteFaultInjectionPolicyDelayNetworkservicesV1beta1(
      fixedDelay: (() { final guardedValue = map['fixedDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

