// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_destination.dart';
import 'grpc_route_fault_injection_policy.dart';
import 'grpc_route_retry_policy.dart';
import 'grpc_route_stateful_session_affinity_policy.dart';

/// Specifies how to route matched traffic.
class GrpcRouteRouteAction {
  /// Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  final pulumi.Input<List<GrpcRouteDestination>>? destinations;

  /// Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final pulumi.Input<GrpcRouteFaultInjectionPolicy>? faultInjectionPolicy;

  /// Optional. Specifies the retry policy associated with this route.
  final pulumi.Input<GrpcRouteRetryPolicy>? retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final pulumi.Input<GrpcRouteStatefulSessionAffinityPolicy>?
  statefulSessionAffinity;

  /// Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final pulumi.Input<String>? timeout;

  /// Creates a new [GrpcRouteRouteAction].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  /// [faultInjectionPolicy] Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  /// [retryPolicy] Optional. Specifies the retry policy associated with this route.
  /// [statefulSessionAffinity] Optional. Specifies cookie-based stateful session affinity.
  /// [timeout] Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  GrpcRouteRouteAction({
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations':
          ?pulumi.Input.mapOptionalInputValue<
            List<GrpcRouteDestination>,
            List<Map<String, dynamic>>
          >(
            destinations,
            (value) =>
                pulumi.Input.encodeList<
                  GrpcRouteDestination,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'faultInjectionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GrpcRouteFaultInjectionPolicy,
            Map<String, dynamic>
          >(faultInjectionPolicy, (value) => value.toMap()),
      'retryPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            GrpcRouteRetryPolicy,
            Map<String, dynamic>
          >(retryPolicy, (value) => value.toMap()),
      'statefulSessionAffinity':
          ?pulumi.Input.mapOptionalInputValue<
            GrpcRouteStatefulSessionAffinityPolicy,
            Map<String, dynamic>
          >(statefulSessionAffinity, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory GrpcRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteAction(
      destinations: (() {
        final guardedValue = map['destinations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GrpcRouteDestination>(
            guardedValue,
            (value) => GrpcRouteDestination.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      faultInjectionPolicy: (() {
        final guardedValue = map['faultInjectionPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrpcRouteFaultInjectionPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      retryPolicy: (() {
        final guardedValue = map['retryPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrpcRouteRetryPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      statefulSessionAffinity: (() {
        final guardedValue = map['statefulSessionAffinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GrpcRouteStatefulSessionAffinityPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
