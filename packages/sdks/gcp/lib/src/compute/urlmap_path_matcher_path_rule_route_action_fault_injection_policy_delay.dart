// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_path_rule_route_action_fault_injection_policy_delay_fixed_delay.dart';

class URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay {
  /// Specifies the value of the fixed delay interval.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay> fixedDelay;
  /// The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final pulumi.Input<double> percentage;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': pulumi.Input.mapInputValue<URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': percentage,
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay(
      fixedDelay: pulumi.Input.fromValue(URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay.fromMap((map['fixedDelay']! as Map).cast<String, dynamic>())),
      percentage: pulumi.Input.fromValue(map['percentage'] as double),
    );
  }
}

