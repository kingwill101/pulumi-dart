// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_cors_policy_response_networkservices_v1beta1.dart';
import 'http_route_destination_response_networkservices_v1beta1.dart';
import 'http_route_fault_injection_policy_response_networkservices_v1beta1.dart';
import 'http_route_header_modifier_response_networkservices_v1beta1.dart';
import 'http_route_redirect_response_networkservices_v1beta1.dart';
import 'http_route_request_mirror_policy_response_networkservices_v1beta1.dart';
import 'http_route_retry_policy_response_networkservices_v1beta1.dart';
import 'http_route_stateful_session_affinity_policy_response_networkservices_v1beta1.dart';
import 'http_route_urlrewrite_response_networkservices_v1beta1.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteActionResponseNetworkservicesV1beta1 {
  /// The specification for allowing client side cross-origin requests.
  final pulumi.Input<HttpRouteCorsPolicyResponseNetworkservicesV1beta1> corsPolicy;
  /// The destination to which traffic should be forwarded.
  final pulumi.Input<List<HttpRouteDestinationResponseNetworkservicesV1beta1>> destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final pulumi.Input<HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1> faultInjectionPolicy;
  /// If set, the request is directed as configured by this field.
  final pulumi.Input<HttpRouteRedirectResponseNetworkservicesV1beta1> redirect;
  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final pulumi.Input<HttpRouteHeaderModifierResponseNetworkservicesV1beta1> requestHeaderModifier;
  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final pulumi.Input<HttpRouteRequestMirrorPolicyResponseNetworkservicesV1beta1> requestMirrorPolicy;
  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final pulumi.Input<HttpRouteHeaderModifierResponseNetworkservicesV1beta1> responseHeaderModifier;
  /// Specifies the retry policy associated with this route.
  final pulumi.Input<HttpRouteRetryPolicyResponseNetworkservicesV1beta1> retryPolicy;
  /// Optional. Specifies cookie-based stateful session affinity.
  final pulumi.Input<HttpRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1> statefulSessionAffinity;
  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final pulumi.Input<String> timeout;
  /// The specification for rewrite URL before forwarding requests to the destination.
  final pulumi.Input<HttpRouteURLRewriteResponseNetworkservicesV1beta1> urlRewrite;

  /// Creates a new [HttpRouteRouteActionResponseNetworkservicesV1beta1].
  /// [corsPolicy] The specification for allowing client side cross-origin requests.
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  /// [redirect] If set, the request is directed as configured by this field.
  /// [requestHeaderModifier] The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  /// [requestMirrorPolicy] Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  /// [responseHeaderModifier] The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [statefulSessionAffinity] Optional. Specifies cookie-based stateful session affinity.
  /// [timeout] Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  /// [urlRewrite] The specification for rewrite URL before forwarding requests to the destination.
  HttpRouteRouteActionResponseNetworkservicesV1beta1({
    required this.corsPolicy,
    required this.destinations,
    required this.faultInjectionPolicy,
    required this.redirect,
    required this.requestHeaderModifier,
    required this.requestMirrorPolicy,
    required this.responseHeaderModifier,
    required this.retryPolicy,
    required this.statefulSessionAffinity,
    required this.timeout,
    required this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsPolicy': pulumi.Input.mapInputValue<HttpRouteCorsPolicyResponseNetworkservicesV1beta1, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'destinations': pulumi.Input.mapInputValue<List<HttpRouteDestinationResponseNetworkservicesV1beta1>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<HttpRouteDestinationResponseNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'faultInjectionPolicy': pulumi.Input.mapInputValue<HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'redirect': pulumi.Input.mapInputValue<HttpRouteRedirectResponseNetworkservicesV1beta1, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'requestHeaderModifier': pulumi.Input.mapInputValue<HttpRouteHeaderModifierResponseNetworkservicesV1beta1, Map<String, dynamic>>(requestHeaderModifier, (value) => value.toMap()),
      'requestMirrorPolicy': pulumi.Input.mapInputValue<HttpRouteRequestMirrorPolicyResponseNetworkservicesV1beta1, Map<String, dynamic>>(requestMirrorPolicy, (value) => value.toMap()),
      'responseHeaderModifier': pulumi.Input.mapInputValue<HttpRouteHeaderModifierResponseNetworkservicesV1beta1, Map<String, dynamic>>(responseHeaderModifier, (value) => value.toMap()),
      'retryPolicy': pulumi.Input.mapInputValue<HttpRouteRetryPolicyResponseNetworkservicesV1beta1, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'statefulSessionAffinity': pulumi.Input.mapInputValue<HttpRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1, Map<String, dynamic>>(statefulSessionAffinity, (value) => value.toMap()),
      'timeout': timeout,
      'urlRewrite': pulumi.Input.mapInputValue<HttpRouteURLRewriteResponseNetworkservicesV1beta1, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
    };
  }

  factory HttpRouteRouteActionResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteActionResponseNetworkservicesV1beta1(
      corsPolicy: (HttpRouteCorsPolicyResponseNetworkservicesV1beta1.fromMap((map['corsPolicy'] as Map).cast<String, dynamic>())).input(),
      destinations: (pulumi.Input.decodeList<HttpRouteDestinationResponseNetworkservicesV1beta1>(map['destinations'], (value) => HttpRouteDestinationResponseNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      faultInjectionPolicy: (HttpRouteFaultInjectionPolicyResponseNetworkservicesV1beta1.fromMap((map['faultInjectionPolicy'] as Map).cast<String, dynamic>())).input(),
      redirect: (HttpRouteRedirectResponseNetworkservicesV1beta1.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
      requestHeaderModifier: (HttpRouteHeaderModifierResponseNetworkservicesV1beta1.fromMap((map['requestHeaderModifier'] as Map).cast<String, dynamic>())).input(),
      requestMirrorPolicy: (HttpRouteRequestMirrorPolicyResponseNetworkservicesV1beta1.fromMap((map['requestMirrorPolicy'] as Map).cast<String, dynamic>())).input(),
      responseHeaderModifier: (HttpRouteHeaderModifierResponseNetworkservicesV1beta1.fromMap((map['responseHeaderModifier'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: (HttpRouteRetryPolicyResponseNetworkservicesV1beta1.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      statefulSessionAffinity: (HttpRouteStatefulSessionAffinityPolicyResponseNetworkservicesV1beta1.fromMap((map['statefulSessionAffinity'] as Map).cast<String, dynamic>())).input(),
      timeout: (map['timeout'] as String).input(),
      urlRewrite: (HttpRouteURLRewriteResponseNetworkservicesV1beta1.fromMap((map['urlRewrite'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

