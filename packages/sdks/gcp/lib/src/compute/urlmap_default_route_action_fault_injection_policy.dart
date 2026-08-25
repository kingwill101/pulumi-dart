// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_default_route_action_fault_injection_policy_abort.dart';
import 'urlmap_default_route_action_fault_injection_policy_delay.dart';

class URLMapDefaultRouteActionFaultInjectionPolicy {
  /// The specification for how client requests are aborted as part of fault injection.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultRouteActionFaultInjectionPolicyAbort?>? abort;
  /// The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  /// Structure is documented below.
  final pulumi.Input<URLMapDefaultRouteActionFaultInjectionPolicyDelay?>? delay;

  /// Creates a new [URLMapDefaultRouteActionFaultInjectionPolicy].
  /// [abort] The specification for how client requests are aborted as part of fault injection.
  /// [delay] The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  const URLMapDefaultRouteActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultRouteActionFaultInjectionPolicyAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<URLMapDefaultRouteActionFaultInjectionPolicyDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory URLMapDefaultRouteActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return URLMapDefaultRouteActionFaultInjectionPolicy(
      abort: (() { final guardedValue = map['abort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapDefaultRouteActionFaultInjectionPolicyAbort.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      delay: (() { final guardedValue = map['delay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapDefaultRouteActionFaultInjectionPolicyDelay.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
