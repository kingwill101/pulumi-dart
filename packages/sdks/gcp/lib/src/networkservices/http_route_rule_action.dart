// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_action_cors_policy.dart';
import 'http_route_rule_action_destination.dart';
import 'http_route_rule_action_fault_injection_policy.dart';
import 'http_route_rule_action_redirect.dart';
import 'http_route_rule_action_request_header_modifier.dart';
import 'http_route_rule_action_request_mirror_policy.dart';
import 'http_route_rule_action_response_header_modifier.dart';
import 'http_route_rule_action_retry_policy.dart';
import 'http_route_rule_action_url_rewrite.dart';

class HttpRouteRuleAction {
  /// The specification for allowing client side cross-origin requests.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionCorsPolicy>? corsPolicy;
  /// The destination to which traffic should be forwarded.
  /// Structure is documented below.
  final pulumi.Input<List<HttpRouteRuleActionDestination>>? destinations;
  /// The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionFaultInjectionPolicy>? faultInjectionPolicy;
  /// If set, the request is directed as configured by this field.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionRedirect>? redirect;
  /// The specification for modifying the headers of a matching request prior to delivery of the request to the destination.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionRequestHeaderModifier>? requestHeaderModifier;
  /// Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionRequestMirrorPolicy>? requestMirrorPolicy;
  /// The specification for modifying the headers of a response prior to sending the response back to the client.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionResponseHeaderModifier>? responseHeaderModifier;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionRetryPolicy>? retryPolicy;
  /// Specifies the timeout for selected route.
  final pulumi.Input<String>? timeout;
  /// The specification for rewrite URL before forwarding requests to the destination.
  /// Structure is documented below.
  final pulumi.Input<HttpRouteRuleActionUrlRewrite>? urlRewrite;

  /// Creates a new [HttpRouteRuleAction].
  /// [corsPolicy] The specification for allowing client side cross-origin requests.
  /// [destinations] The destination to which traffic should be forwarded.
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure.
  /// [redirect] If set, the request is directed as configured by this field.
  /// [requestHeaderModifier] The specification for modifying the headers of a matching request prior to delivery of the request to the destination.
  /// [requestMirrorPolicy] Specifies the policy on how requests intended for the routes destination are shadowed to a separate mirrored destination.
  /// [responseHeaderModifier] The specification for modifying the headers of a response prior to sending the response back to the client.
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for selected route.
  /// [urlRewrite] The specification for rewrite URL before forwarding requests to the destination.
  HttpRouteRuleAction({
    this.corsPolicy,
    this.destinations,
    this.faultInjectionPolicy,
    this.redirect,
    this.requestHeaderModifier,
    this.requestMirrorPolicy,
    this.responseHeaderModifier,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionCorsPolicy, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<HttpRouteRuleActionDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<HttpRouteRuleActionDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'faultInjectionPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionFaultInjectionPolicy, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'requestHeaderModifier': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionRequestHeaderModifier, Map<String, dynamic>>(requestHeaderModifier, (value) => value.toMap()),
      'requestMirrorPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionRequestMirrorPolicy, Map<String, dynamic>>(requestMirrorPolicy, (value) => value.toMap()),
      'responseHeaderModifier': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionResponseHeaderModifier, Map<String, dynamic>>(responseHeaderModifier, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?timeout,
      'urlRewrite': ?pulumi.Input.mapOptionalInputValue<HttpRouteRuleActionUrlRewrite, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
    };
  }

  factory HttpRouteRuleAction.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleAction(
      corsPolicy: map['corsPolicy'] == null ? null : (HttpRouteRuleActionCorsPolicy.fromMap((map['corsPolicy']! as Map).cast<String, dynamic>())).input(),
      destinations: map['destinations'] == null ? null : (pulumi.Input.decodeList<HttpRouteRuleActionDestination>(map['destinations']!, (value) => HttpRouteRuleActionDestination.fromMap((value as Map).cast<String, dynamic>()))).input(),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null ? null : (HttpRouteRuleActionFaultInjectionPolicy.fromMap((map['faultInjectionPolicy']! as Map).cast<String, dynamic>())).input(),
      redirect: map['redirect'] == null ? null : (HttpRouteRuleActionRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())).input(),
      requestHeaderModifier: map['requestHeaderModifier'] == null ? null : (HttpRouteRuleActionRequestHeaderModifier.fromMap((map['requestHeaderModifier']! as Map).cast<String, dynamic>())).input(),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null ? null : (HttpRouteRuleActionRequestMirrorPolicy.fromMap((map['requestMirrorPolicy']! as Map).cast<String, dynamic>())).input(),
      responseHeaderModifier: map['responseHeaderModifier'] == null ? null : (HttpRouteRuleActionResponseHeaderModifier.fromMap((map['responseHeaderModifier']! as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (HttpRouteRuleActionRetryPolicy.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
      urlRewrite: map['urlRewrite'] == null ? null : (HttpRouteRuleActionUrlRewrite.fromMap((map['urlRewrite']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

