// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_path_rule_route_action_fault_injection_policy_abort.dart';
import 'urlmap_path_matcher_path_rule_route_action_fault_injection_policy_delay.dart';

class URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final pulumi.Input<
    URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort
  >?
  abort;

  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final pulumi.Input<
    URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay
  >?
  delay;

  /// Creates a new [URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort':
          ?pulumi.Input.mapOptionalInputValue<
            URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort,
            Map<String, dynamic>
          >(abort, (value) => value.toMap()),
      'delay':
          ?pulumi.Input.mapOptionalInputValue<
            URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay,
            Map<String, dynamic>
          >(delay, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicy(
      abort: (() {
        final guardedValue = map['abort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyAbort.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      delay: (() {
        final guardedValue = map['delay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          URLMapPathMatcherPathRuleRouteActionFaultInjectionPolicyDelay.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
