// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_default_route_action_fault_injection_policy_abort.dart';
import 'urlmap_path_matcher_default_route_action_fault_injection_policy_delay.dart';

class URLMapPathMatcherDefaultRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort?>? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay?>? delay;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  const URLMapPathMatcherDefaultRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherDefaultRouteActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultRouteActionFaultInjectionPolicy(
      abort: (() { final guardedValue = map['abort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherDefaultRouteActionFaultInjectionPolicyAbort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherDefaultRouteActionFaultInjectionPolicyDelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
