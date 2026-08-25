// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrpcRouteRuleActionFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  final pulumi.Input<String?>? fixedDelay;
  /// The percentage of traffic on which delay will be injected.
  final pulumi.Input<int?>? percentage;

  /// Creates a new [GrpcRouteRuleActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected.
  const GrpcRouteRuleActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory GrpcRouteRuleActionFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleActionFaultInjectionPolicyDelay(
      fixedDelay: (() { final guardedValue = map['fixedDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
