// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_default_route_action_fault_injection_policy_abort.dart';
import 'region_url_map_path_matcher_default_route_action_fault_injection_policy_delay.dart';

class RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort>? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay>? delay;

  /// Creates a new [RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicy(
      abort: map['abort'] == null ? null : (RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort.fromMap((map['abort'] as Map).cast<String, dynamic>())).input(),
      delay: map['delay'] == null ? null : (RegionUrlMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay.fromMap((map['delay'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

