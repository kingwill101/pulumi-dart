// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_action_fault_injection_policy_abort.dart';
import 'http_route_rule_action_fault_injection_policy_delay.dart';

class HttpRouteRuleActionFaultInjectionPolicy {
  /// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionFaultInjectionPolicyAbort>? abort;

  /// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionFaultInjectionPolicyDelay>? delay;

  /// Creates a new [HttpRouteRuleActionFaultInjectionPolicy].
  /// [abort] Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// [delay] Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  HttpRouteRuleActionFaultInjectionPolicy({this.abort, this.delay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRouteRuleActionFaultInjectionPolicyAbort,
            Map<String, dynamic>
          >(abort, (value) => value.toMap()),
      'delay':
          ?pulumi.Input.mapOptionalInputValue<
            HttpRouteRuleActionFaultInjectionPolicyDelay,
            Map<String, dynamic>
          >(delay, (value) => value.toMap()),
    };
  }

  factory HttpRouteRuleActionFaultInjectionPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteRuleActionFaultInjectionPolicy(
      abort: (() {
        final guardedValue = map['abort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpRouteRuleActionFaultInjectionPolicyAbort.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      delay: (() {
        final guardedValue = map['delay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpRouteRuleActionFaultInjectionPolicyDelay.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
