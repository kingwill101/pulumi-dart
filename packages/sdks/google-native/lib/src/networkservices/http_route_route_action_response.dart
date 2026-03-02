// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_cors_policy_response.dart';
import 'http_route_destination_response.dart';
import 'http_route_fault_injection_policy_response.dart';
import 'http_route_header_modifier_response.dart';
import 'http_route_redirect_response.dart';
import 'http_route_request_mirror_policy_response.dart';
import 'http_route_retry_policy_response.dart';
import 'http_route_stateful_session_affinity_policy_response.dart';
import 'http_route_urlrewrite_response.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteActionResponse {
  /// The specification for allowing client side cross-origin requests.
  final pulumi.Input<HttpRouteCorsPolicyResponse> corsPolicy;
  /// The destination to which traffic should be forwarded.
  final pulumi.Input<List<HttpRouteDestinationResponse>> destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final pulumi.Input<HttpRouteFaultInjectionPolicyResponse> faultInjectionPolicy;
  /// If set, the request is directed as configured by this field.
  final pulumi.Input<HttpRouteRedirectResponse> redirect;
  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final pulumi.Input<HttpRouteHeaderModifierResponse> requestHeaderModifier;
  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final pulumi.Input<HttpRouteRequestMirrorPolicyResponse> requestMirrorPolicy;
  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final pulumi.Input<HttpRouteHeaderModifierResponse> responseHeaderModifier;
  /// Specifies the retry policy associated with this route.
  final pulumi.Input<HttpRouteRetryPolicyResponse> retryPolicy;
  /// Optional. Specifies cookie-based stateful session affinity.
  final pulumi.Input<HttpRouteStatefulSessionAffinityPolicyResponse> statefulSessionAffinity;
  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final pulumi.Input<String> timeout;
  /// The specification for rewrite URL before forwarding requests to the destination.
  final pulumi.Input<HttpRouteURLRewriteResponse> urlRewrite;

  /// Creates a new [HttpRouteRouteActionResponse].
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
  HttpRouteRouteActionResponse({
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
      'corsPolicy': pulumi.Input.mapInputValue<HttpRouteCorsPolicyResponse, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'destinations': pulumi.Input.mapInputValue<List<HttpRouteDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<HttpRouteDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'faultInjectionPolicy': pulumi.Input.mapInputValue<HttpRouteFaultInjectionPolicyResponse, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'redirect': pulumi.Input.mapInputValue<HttpRouteRedirectResponse, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'requestHeaderModifier': pulumi.Input.mapInputValue<HttpRouteHeaderModifierResponse, Map<String, dynamic>>(requestHeaderModifier, (value) => value.toMap()),
      'requestMirrorPolicy': pulumi.Input.mapInputValue<HttpRouteRequestMirrorPolicyResponse, Map<String, dynamic>>(requestMirrorPolicy, (value) => value.toMap()),
      'responseHeaderModifier': pulumi.Input.mapInputValue<HttpRouteHeaderModifierResponse, Map<String, dynamic>>(responseHeaderModifier, (value) => value.toMap()),
      'retryPolicy': pulumi.Input.mapInputValue<HttpRouteRetryPolicyResponse, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'statefulSessionAffinity': pulumi.Input.mapInputValue<HttpRouteStatefulSessionAffinityPolicyResponse, Map<String, dynamic>>(statefulSessionAffinity, (value) => value.toMap()),
      'timeout': timeout,
      'urlRewrite': pulumi.Input.mapInputValue<HttpRouteURLRewriteResponse, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
    };
  }

  factory HttpRouteRouteActionResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteActionResponse(
      corsPolicy: (HttpRouteCorsPolicyResponse.fromMap((map['corsPolicy'] as Map).cast<String, dynamic>())).input(),
      destinations: (pulumi.Input.decodeList<HttpRouteDestinationResponse>(map['destinations'], (value) => HttpRouteDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      faultInjectionPolicy: (HttpRouteFaultInjectionPolicyResponse.fromMap((map['faultInjectionPolicy'] as Map).cast<String, dynamic>())).input(),
      redirect: (HttpRouteRedirectResponse.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
      requestHeaderModifier: (HttpRouteHeaderModifierResponse.fromMap((map['requestHeaderModifier'] as Map).cast<String, dynamic>())).input(),
      requestMirrorPolicy: (HttpRouteRequestMirrorPolicyResponse.fromMap((map['requestMirrorPolicy'] as Map).cast<String, dynamic>())).input(),
      responseHeaderModifier: (HttpRouteHeaderModifierResponse.fromMap((map['responseHeaderModifier'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: (HttpRouteRetryPolicyResponse.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      statefulSessionAffinity: (HttpRouteStatefulSessionAffinityPolicyResponse.fromMap((map['statefulSessionAffinity'] as Map).cast<String, dynamic>())).input(),
      timeout: (map['timeout'] as String).input(),
      urlRewrite: (HttpRouteURLRewriteResponse.fromMap((map['urlRewrite'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

