// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_abort.dart';
import 'region_url_map_path_matcher_path_rule_route_action_fault_injection_policy_delay.dart';

class RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort>? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay>? delay;

  /// Creates a new [RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  const RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicy(
      abort: (() { final guardedValue = map['abort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
