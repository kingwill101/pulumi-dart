// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_action_destination.dart';
import 'grpc_route_rule_action_fault_injection_policy.dart';
import 'grpc_route_rule_action_retry_policy.dart';

class GrpcRouteRuleAction {
  /// The destination to which traffic should be forwarded.
  /// Structure is documented below.
  final pulumi.Input<List<GrpcRouteRuleActionDestination>>? destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleActionFaultInjectionPolicy>? faultInjectionPolicy;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleActionRetryPolicy>? retryPolicy;
  /// Specifies the timeout for selected route.
  final pulumi.Input<String>? timeout;

  /// Creates a new [GrpcRouteRuleAction].
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for selected route.
  const GrpcRouteRuleAction({
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteRuleActionDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GrpcRouteRuleActionDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'faultInjectionPolicy': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleActionFaultInjectionPolicy, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleActionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory GrpcRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleAction(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteRuleActionDestination>(guardedValue, (value) => GrpcRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      faultInjectionPolicy: (() { final guardedValue = map['faultInjectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteRuleActionFaultInjectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteRuleActionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

