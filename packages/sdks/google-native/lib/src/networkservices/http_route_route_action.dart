// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_cors_policy.dart';
import 'http_route_destination.dart';
import 'http_route_fault_injection_policy.dart';
import 'http_route_header_modifier.dart';
import 'http_route_redirect.dart';
import 'http_route_request_mirror_policy.dart';
import 'http_route_retry_policy.dart';
import 'http_route_stateful_session_affinity_policy.dart';
import 'http_route_urlrewrite.dart';

/// The specifications for routing traffic and applying associated policies.
class HttpRouteRouteAction {
  /// The specification for allowing client side cross-origin requests.
  final pulumi.Input<HttpRouteCorsPolicy>? corsPolicy;
  /// The destination to which traffic should be forwarded.
  final pulumi.Input<List<HttpRouteDestination>>? destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced on a percentage of requests before sending those requests to the backend service. Similarly requests from clients can be aborted for a percentage of requests. timeout and retry_policy will be ignored by clients that are configured with a fault_injection_policy
  final pulumi.Input<HttpRouteFaultInjectionPolicy>? faultInjectionPolicy;
  /// If set, the request is directed as configured by this field.
  final pulumi.Input<HttpRouteRedirect>? redirect;
  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final pulumi.Input<HttpRouteHeaderModifier>? requestHeaderModifier;
  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination. Proxy will not wait for the shadow destination to respond before returning the response. Prior to sending traffic to the shadow service, the host/authority header is suffixed with -shadow.
  final pulumi.Input<HttpRouteRequestMirrorPolicy>? requestMirrorPolicy;
  /// The specification for modifying the headers of a response prior to sending the response back to the client. If HeaderModifiers are set on both the Destination and the RouteAction, they will be merged. Conflicts between the two will not be resolved on the configuration.
  final pulumi.Input<HttpRouteHeaderModifier>? responseHeaderModifier;
  /// Specifies the retry policy associated with this route.
  final pulumi.Input<HttpRouteRetryPolicy>? retryPolicy;
  /// Optional. Specifies cookie-based stateful session affinity.
  final pulumi.Input<HttpRouteStatefulSessionAffinityPolicy>? statefulSessionAffinity;
  /// Specifies the timeout for selected route. Timeout is computed from the time the request has been fully processed (i.e. end of stream) up until the response has been completely processed. Timeout includes all retries.
  final pulumi.Input<String>? timeout;
  /// The specification for rewrite URL before forwarding requests to the destination.
  final pulumi.Input<HttpRouteURLRewrite>? urlRewrite;

  /// Creates a new [HttpRouteRouteAction].
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
  HttpRouteRouteAction({
    this.corsPolicy,
    this.destinations,
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.statefulSessionAffinity,
    this.timeout,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteCorsPolicy, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<HttpRouteDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'faultInjectionPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteFaultInjectionPolicy, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<HttpRouteRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'requestHeaderModifier': ?pulumi.Input.mapOptionalInputValue<HttpRouteHeaderModifier, Map<String, dynamic>>(requestHeaderModifier, (value) => value.toMap()),
      'requestMirrorPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteRequestMirrorPolicy, Map<String, dynamic>>(requestMirrorPolicy, (value) => value.toMap()),
      'responseHeaderModifier': ?pulumi.Input.mapOptionalInputValue<HttpRouteHeaderModifier, Map<String, dynamic>>(responseHeaderModifier, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'statefulSessionAffinity': ?pulumi.Input.mapOptionalInputValue<HttpRouteStatefulSessionAffinityPolicy, Map<String, dynamic>>(statefulSessionAffinity, (value) => value.toMap()),
      'timeout': ?timeout,
      'urlRewrite': ?pulumi.Input.mapOptionalInputValue<HttpRouteURLRewrite, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
    };
  }

  factory HttpRouteRouteAction.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteAction(
      corsPolicy: map['corsPolicy'] == null ? null : (HttpRouteCorsPolicy.fromMap((map['corsPolicy'] as Map).cast<String, dynamic>())).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<HttpRouteDestination>(map['destinations'], (value) => HttpRouteDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null ? null : (HttpRouteFaultInjectionPolicy.fromMap((map['faultInjectionPolicy'] as Map).cast<String, dynamic>())).input(),
      redirect: map['redirect'] == null ? null : (HttpRouteRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
      requestHeaderModifier: map['requestHeaderModifier'] == null ? null : (HttpRouteHeaderModifier.fromMap((map['requestHeaderModifier'] as Map).cast<String, dynamic>())).input(),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null ? null : (HttpRouteRequestMirrorPolicy.fromMap((map['requestMirrorPolicy'] as Map).cast<String, dynamic>())).input(),
      responseHeaderModifier: map['responseHeaderModifier'] == null ? null : (HttpRouteHeaderModifier.fromMap((map['responseHeaderModifier'] as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (HttpRouteRetryPolicy.fromMap((map['retryPolicy'] as Map).cast<String, dynamic>())).input(),
      statefulSessionAffinity: map['statefulSessionAffinity'] == null ? null : (HttpRouteStatefulSessionAffinityPolicy.fromMap((map['statefulSessionAffinity'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
      urlRewrite: map['urlRewrite'] == null ? null : (HttpRouteURLRewrite.fromMap((map['urlRewrite'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

