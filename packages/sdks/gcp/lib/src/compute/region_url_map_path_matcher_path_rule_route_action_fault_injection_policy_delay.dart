// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_delay_fixed_delay.dart';

class RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay {
  /// Specifies the value of the fixed delay interval.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay> fixedDelay;
  /// The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final pulumi.Input<double> percentage;

  /// Creates a new [RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  const RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay({
    required this.fixedDelay,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': pulumi.Input.mapInputValue<RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': percentage,
    };
  }

  factory RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay(
      fixedDelay: pulumi.Input.fromValue(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelayFixedDelay.fromMap((map['fixedDelay']! as Map).cast<String, dynamic>())),
      percentage: pulumi.Input.fromValue(map['percentage'] as double),
    );
  }
}

