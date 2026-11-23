// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_action_destination.dart';
import 'grpc_route_rule_action_fault_injection_policy.dart';
import 'grpc_route_rule_action_retry_policy.dart';

class GrpcRouteRuleAction {
  /// The destination to which traffic should be forwarded.
  /// Structure is documented below.
  final pulumi.Input<List<GrpcRouteRuleActionDestination>?>? destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleActionFaultInjectionPolicy?>? faultInjectionPolicy;
  /// Specifies the idle timeout for the selected route. The idle timeout is defined as the period in which there are no bytes sent or received on either the upstream or downstream connection. If not set, the default idle timeout is 1 hour. If set to 0s, the timeout will be disabled.
  final pulumi.Input<String?>? idleTimeout;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final pulumi.Input<GrpcRouteRuleActionRetryPolicy?>? retryPolicy;
  /// Specifies the timeout for selected route.
  final pulumi.Input<String?>? timeout;

  /// Creates a new [GrpcRouteRuleAction].
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// [idleTimeout] Specifies the idle timeout for the selected route. The idle timeout is defined as the period in which there are no bytes sent or received on either the upstream or downstream connection. If not set, the default idle timeout is 1 hour. If set to 0s, the timeout will be disabled.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for selected route.
  const GrpcRouteRuleAction({
    this.destinations,
    this.faultInjectionPolicy,
    this.idleTimeout,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<GrpcRouteRuleActionDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GrpcRouteRuleActionDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'faultInjectionPolicy': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleActionFaultInjectionPolicy, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'idleTimeout': ?idleTimeout,
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<GrpcRouteRuleActionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory GrpcRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleAction(
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GrpcRouteRuleActionDestination>(guardedValue, (value) => GrpcRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      faultInjectionPolicy: (() { final guardedValue = map['faultInjectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteRuleActionFaultInjectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      idleTimeout: (() { final guardedValue = map['idleTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GrpcRouteRuleActionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
