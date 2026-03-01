// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_destination_networkservices_v1beta1.dart';
import 'grpc_route_fault_injection_policy_networkservices_v1beta1.dart';
import 'grpc_route_retry_policy_networkservices_v1beta1.dart';
import 'grpc_route_stateful_session_affinity_policy_networkservices_v1beta1.dart';

/// Specifies how to route matched traffic.
class GrpcRouteRouteActionNetworkservicesV1beta1 {
  /// Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  final List<GrpcRouteDestinationNetworkservicesV1beta1>? destinations;
  /// Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1? faultInjectionPolicy;
  /// Optional. Specifies the retry policy associated with this route.
  final GrpcRouteRetryPolicyNetworkservicesV1beta1? retryPolicy;
  /// Optional. Specifies cookie-based stateful session affinity.
  final GrpcRouteStatefulSessionAffinityPolicyNetworkservicesV1beta1? statefulSessionAffinity;
  /// Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final String? timeout;

  /// Creates a new [GrpcRouteRouteActionNetworkservicesV1beta1].
  /// [destinations] Optional. The destination services to which traffic should be forwarded. If multiple destinations are specified, traffic will be split between Backend Service(s) according to the weight field of these destinations.
  /// [faultInjectionPolicy] Optional. The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  /// [retryPolicy] Optional. Specifies the retry policy associated with this route.
  /// [statefulSessionAffinity] Optional. Specifies cookie-based stateful session affinity.
  /// [timeout] Optional. Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  GrpcRouteRouteActionNetworkservicesV1beta1({
    this.destinations,
    this.faultInjectionPolicy,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<GrpcRouteDestinationNetworkservicesV1beta1, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'faultInjectionPolicy': ?faultInjectionPolicy == null ? null : faultInjectionPolicy!.toMap(),
      'retryPolicy': ?retryPolicy == null ? null : retryPolicy!.toMap(),
      'statefulSessionAffinity': ?statefulSessionAffinity == null ? null : statefulSessionAffinity!.toMap(),
      'timeout': ?timeout,
    };
  }

  factory GrpcRouteRouteActionNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteActionNetworkservicesV1beta1(
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<GrpcRouteDestinationNetworkservicesV1beta1>(map['destinations'], (value) => GrpcRouteDestinationNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null ? null : GrpcRouteFaultInjectionPolicyNetworkservicesV1beta1.fromMap((map['faultInjectionPolicy'] as Map).cast<String, dynamic>()),
      retryPolicy: map['retryPolicy'] == null ? null : GrpcRouteRetryPolicyNetworkservicesV1beta1.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>()),
      statefulSessionAffinity: map['statefulSessionAffinity'] == null ? null : GrpcRouteStatefulSessionAffinityPolicyNetworkservicesV1beta1.fromMap((map['statefulSessionAffinity'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

