// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_default_route_action_fault_injection_policy_delay_fixed_delay.dart';

class RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay {
  /// Specifies the value of the fixed delay interval.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay>? fixedDelay;
  /// The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  /// The value must be between 0.0 and 100.0 inclusive.
  final pulumi.Input<double>? percentage;

  /// Creates a new [RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay].
  /// [fixedDelay] Specifies the value of the fixed delay interval.
  /// [percentage] The percentage of traffic (connections/operations/requests) on which delay will be introduced as part of fault injection.
  const RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay({
    this.fixedDelay,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedDelay': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay, Map<String, dynamic>>(fixedDelay, (value) => value.toMap()),
      'percentage': ?percentage,
    };
  }

  factory RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay(
      fixedDelay: (() { final guardedValue = map['fixedDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelayFixedDelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
