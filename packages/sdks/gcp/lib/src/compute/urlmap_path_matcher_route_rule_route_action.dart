// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_route_action_cors_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_fault_injection_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_max_stream_duration.dart';
import 'urlmap_path_matcher_route_rule_route_action_request_mirror_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_retry_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_timeout.dart';
import 'urlmap_path_matcher_route_rule_route_action_url_rewrite.dart';
import 'urlmap_path_matcher_route_rule_route_action_weighted_backend_service.dart';

class URLMapPathMatcherRouteRuleRouteAction {
  /// The specification for allowing client side cross-origin requests. Please see W3C
  /// Recommendation for Cross Origin Resource Sharing
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCorsPolicy>? corsPolicy;
  /// The specification for fault injection introduced into traffic to test the
  /// resiliency of clients to backend service failure. As part of fault injection,
  /// when clients send requests to a backend service, delays can be introduced by
  /// Loadbalancer on a percentage of requests before sending those request to the
  /// backend service. Similarly requests from clients can be aborted by the
  /// Loadbalancer for a percentage of requests. timeout and retry_policy will be
  /// ignored by clients that are configured with a fault_injection_policy.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy>? faultInjectionPolicy;
  /// Specifies the maximum duration (timeout) for streams on the selected route.
  /// Unlike the `Timeout` field where the timeout duration starts from the time the request
  /// has been fully processed (known as end-of-stream), the duration in this field
  /// is computed from the beginning of the stream until the response has been processed,
  /// including all retries. A stream that does not complete in this duration is closed.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionMaxStreamDuration>? maxStreamDuration;
  /// Specifies the policy on how requests intended for the route's backends are
  /// shadowed to a separate mirrored backend service. Loadbalancer does not wait for
  /// responses from the shadow service. Prior to sending traffic to the shadow
  /// service, the host / authority header is suffixed with -shadow.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionRequestMirrorPolicy>? requestMirrorPolicy;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionRetryPolicy>? retryPolicy;
  /// Specifies the timeout for the selected route. Timeout is computed from the time
  /// the request is has been fully processed (i.e. end-of-stream) up until the
  /// response has been completely processed. Timeout includes all retries. If not
  /// specified, the default value is 15 seconds.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionTimeout>? timeout;
  /// The spec to modify the URL of the request, prior to forwarding the request to
  /// the matched service
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionUrlRewrite>? urlRewrite;
  /// A list of weighted backend services to send traffic to when a route match
  /// occurs. The weights determine the fraction of traffic that flows to their
  /// corresponding backend service. If all traffic needs to go to a single backend
  /// service, there must be one  weightedBackendService with weight set to a non 0
  /// number. Once a backendService is identified and before forwarding the request to
  /// the backend service, advanced routing actions like Url rewrites and header
  /// transformations are applied depending on additional settings specified in this
  /// HttpRouteAction.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleRouteActionWeightedBackendService>>? weightedBackendServices;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteAction].
  /// [corsPolicy] The specification for allowing client side cross-origin requests. Please see W3C
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the
  /// [maxStreamDuration] Specifies the maximum duration (timeout) for streams on the selected route.
  /// [requestMirrorPolicy] Specifies the policy on how requests intended for the route's backends are
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for the selected route. Timeout is computed from the time
  /// [urlRewrite] The spec to modify the URL of the request, prior to forwarding the request to
  /// [weightedBackendServices] A list of weighted backend services to send traffic to when a route match
  URLMapPathMatcherRouteRuleRouteAction({
    this.corsPolicy,
    this.faultInjectionPolicy,
    this.maxStreamDuration,
    this.requestMirrorPolicy,
    this.retryPolicy,
    this.timeout,
    this.urlRewrite,
    this.weightedBackendServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corsPolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCorsPolicy, Map<String, dynamic>>(corsPolicy, (value) => value.toMap()),
      'faultInjectionPolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy, Map<String, dynamic>>(faultInjectionPolicy, (value) => value.toMap()),
      'maxStreamDuration': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionMaxStreamDuration, Map<String, dynamic>>(maxStreamDuration, (value) => value.toMap()),
      'requestMirrorPolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionRequestMirrorPolicy, Map<String, dynamic>>(requestMirrorPolicy, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
      'urlRewrite': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionUrlRewrite, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
      'weightedBackendServices': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleRouteActionWeightedBackendService>, List<Map<String, dynamic>>>(weightedBackendServices, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleRouteActionWeightedBackendService, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory URLMapPathMatcherRouteRuleRouteAction.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleRouteAction(
      corsPolicy: map['corsPolicy'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionCorsPolicy.fromMap((map['corsPolicy']! as Map).cast<String, dynamic>())).input(),
      faultInjectionPolicy: map['faultInjectionPolicy'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy.fromMap((map['faultInjectionPolicy']! as Map).cast<String, dynamic>())).input(),
      maxStreamDuration: map['maxStreamDuration'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionMaxStreamDuration.fromMap((map['maxStreamDuration']! as Map).cast<String, dynamic>())).input(),
      requestMirrorPolicy: map['requestMirrorPolicy'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionRequestMirrorPolicy.fromMap((map['requestMirrorPolicy']! as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionRetryPolicy.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionTimeout.fromMap((map['timeout']! as Map).cast<String, dynamic>())).input(),
      urlRewrite: map['urlRewrite'] == null ? null : (URLMapPathMatcherRouteRuleRouteActionUrlRewrite.fromMap((map['urlRewrite']! as Map).cast<String, dynamic>())).input(),
      weightedBackendServices: map['weightedBackendServices'] == null ? null : (pulumi.Input.decodeList<URLMapPathMatcherRouteRuleRouteActionWeightedBackendService>(map['weightedBackendServices']!, (value) => URLMapPathMatcherRouteRuleRouteActionWeightedBackendService.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

