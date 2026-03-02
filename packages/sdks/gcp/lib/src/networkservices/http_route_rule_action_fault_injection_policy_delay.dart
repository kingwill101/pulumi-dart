// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionFaultInjectionPolicyDelay {
  /// Specify a fixed delay before forwarding the request.
  final pulumi.Input<String>? fixedDelay;
  /// The percentage of traffic on which delay will be injected.
  final pulumi.Input<int>? percentage;

  /// Creates a new [HttpRouteRuleActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specify a fixed delay before forwarding the request.
  /// [percentage] The percentage of traffic on which delay will be injected.
  HttpRouteRuleActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?fixedDelay,
      'percentage': ?percentage,
    };
  }

  factory HttpRouteRuleActionFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionFaultInjectionPolicyDelay(
      fixedDelay: map['fixedDelay'] == null ? null : (map['fixedDelay'] as String).input(),
      percentage: map['percentage'] == null ? null : (map['percentage'] as int).input(),
    );
  }
}

