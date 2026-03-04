// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_destination_response_networkservices_v1beta1.dart';
import 'grpc_route_fault_injection_policy_response_networkservices_v1beta1.dart';
import 'grpc_route_retry_policy_response_networkservices_v1beta1.dart';
import 'grpc_route_stateful_session_affinity_policy_response_networkservices_v1beta1.dart';

/// Specifies how to route matched traffic.
class GrpcRouteRouteActionResponseNetworkservicesV1beta1 {
  /// Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  final pulumi.Input<List<GrpcRouteDestinationResponseNetworkservicesV1beta1>>
  destinations;

  /// Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final pulumi.Input<
    GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1
  >
  faultInjectionPolicy;

  /// Optional. Specifies the retry policy associated with this route.
  final pulumi.Input<GrpcRouteRetryPolicyResponseNetworkservicesV1beta1>
  retryPolicy;

  /// Optional. Specifies cookie-based stateful session affinity.
  final pulumi.Input<
    GrpcRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1
  >
  statefulSessionAffinity;

  /// Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final pulumi.Input<String> timeout;

  /// Creates a new [GrpcRouteRouteActionResponseNetworkservicesV1beta1].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  /// [faultInjectionPolicy] Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  /// [retryPolicy] Optional. Specifies the retry policy associated with this route.
  /// [statefulSessionAffinity] Optional. Specifies cookie-based stateful session affinity.
  /// [timeout] Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  GrpcRouteRouteActionResponseNetworkservicesV1beta1({
    required this.destinations,
    required this.faultInjectionPolicy,
    required this.retryPolicy,
    required this.statefulSessionAffinity,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations':
          pulumi.Input.mapInputValue<
            List<GrpcRouteDestinationResponseNetworkservicesV1beta1>,
            List<Map<String, dynamic>>
          >(
            destinations,
            (value) =>
                pulumi.Input.encodeList<
                  GrpcRouteDestinationResponseNetworkservicesV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'faultInjectionPolicy':
          pulumi.Input.mapInputValue<
            GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1,
            Map<String, dynamic>
          >(faultInjectionPolicy, (value) => value.toMap()),
      'retryPolicy':
          pulumi.Input.mapInputValue<
            GrpcRouteRetryPolicyResponseNetworkservicesV1beta1,
            Map<String, dynamic>
          >(retryPolicy, (value) => value.toMap()),
      'statefulSessionAffinity':
          pulumi.Input.mapInputValue<
            GrpcRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1,
            Map<String, dynamic>
          >(statefulSessionAffinity, (value) => value.toMap()),
      'timeout': timeout,
    };
  }

  factory GrpcRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return GrpcRouteRouteActionResponseNetworkservicesV1beta1(
      destinations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GrpcRouteDestinationResponseNetworkservicesV1beta1
        >(
          map['destinations']!,
          (value) => GrpcRouteDestinationResponseNetworkservicesV1beta1.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      faultInjectionPolicy: pulumi.Input.fromValue(
        GrpcRouteFaultInjectionPolicyResponseNetworkservicesV1beta1.fromMap(
          (map['faultInjectionPolicy']! as Map).cast<String, dynamic>(),
        ),
      ),
      retryPolicy: pulumi.Input.fromValue(
        GrpcRouteRetryPolicyResponseNetworkservicesV1beta1.fromMap(
          (map['retryPolicy']! as Map).cast<String, dynamic>(),
        ),
      ),
      statefulSessionAffinity: pulumi.Input.fromValue(
        GrpcRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1.fromMap(
          (map['statefulSessionAffinity']! as Map).cast<String, dynamic>(),
        ),
      ),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
    );
  }
}
