// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_route_rule_route_action_fault_injection_policy_abort.dart';
import 'region_url_map_path_matcher_route_rule_route_action_fault_injection_policy_delay.dart';

class RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort?>? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay?>? delay;

  /// Creates a new [RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  const RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy(
      abort: (() { final guardedValue = map['abort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyAbort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionUrlMapPathMatcherRouteRuleRouteActionFaultInjectionPolicyDelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
