// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_action_fault_injection_policy_abort.dart';
import 'grpc_route_rule_action_fault_injection_policy_delay.dart';

class GrpcRouteRuleActionFaultInjectionPolicy {
  /// Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleActionFaultInjectionPolicyAbort>? abort;
  /// Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleActionFaultInjectionPolicyDelay>? delay;

  /// Creates a new [GrpcRouteRuleActionFaultInjectionPolicy].
  /// [abort] Specification of how client requests are aborted as part of fault injection before being sent to a destination.
  /// [delay] Specification of how client requests are delayed as part of fault injection before being sent to a destination.
  GrpcRouteRuleActionFaultInjectionPolicy({
    this.abort,
    this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abort': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleActionFaultInjectionPolicyAbort, Map<String, dynamic>>(abort, (value) => value.toMap()),
      'delay': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleActionFaultInjectionPolicyDelay, Map<String, dynamic>>(delay, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRuleActionFaultInjectionPolicy.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleActionFaultInjectionPolicy(
      abort: map['abort'] == null ? null : (GrpcRouteRuleActionFaultInjectionPolicyAbort.fromMap((map['abort'] as Map).cast<String, dynamic>())).input(),
      delay: map['delay'] == null ? null : (GrpcRouteRuleActionFaultInjectionPolicyDelay.fromMap((map['delay'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

