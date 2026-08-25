// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_route_action_cache_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_cors_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_fault_injection_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_max_stream_duration.dart';
import 'urlmap_path_matcher_route_rule_route_action_request_mirror_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_retry_policy.dart';
import 'urlmap_path_matcher_route_rule_route_action_timeout.dart';
import 'urlmap_path_matcher_route_rule_route_action_url_rewrite.dart';
import 'urlmap_path_matcher_route_rule_route_action_weighted_backend_service.dart';

class URLMapPathMatcherRouteRuleRouteAction {
  /// Specifies the cache policy configuration for matched traffic. Available
  /// only for Global EXTERNAL_MANAGED load balancer schemes. At least one
  /// property must be specified. This policy cannot be specified if any target
  /// backend has Identity-Aware Proxy enabled.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCachePolicy?>? cachePolicy;
  /// The specification for allowing client side cross-origin requests. Please see W3C
  /// Recommendation for Cross Origin Resource Sharing
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionCorsPolicy?>? corsPolicy;
  /// The specification for fault injection introduced into traffic to test the
  /// resiliency of clients to backend service failure. As part of fault injection,
  /// when clients send requests to a backend service, delays can be introduced by
  /// Loadbalancer on a percentage of requests before sending those request to the
  /// backend service. Similarly requests from clients can be aborted by the
  /// Loadbalancer for a percentage of requests. timeout and retryPolicy will be
  /// ignored by clients that are configured with a fault_injection_policy.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy?>? faultInjectionPolicy;
  /// Specifies the maximum duration (timeout) for streams on the selected route.
  /// Unlike the `Timeout` field where the timeout duration starts from the time the request
  /// has been fully processed (known as end-of-stream), the duration in this field
  /// is computed from the beginning of the stream until the response has been processed,
  /// including all retries. A stream that does not complete in this duration is closed.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionMaxStreamDuration?>? maxStreamDuration;
  /// Specifies the policy on how requests intended for the route's backends are
  /// shadowed to a separate mirrored backend service. Loadbalancer does not wait for
  /// responses from the shadow service. Prior to sending traffic to the shadow
  /// service, the host / authority header is suffixed with -shadow.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionRequestMirrorPolicy?>? requestMirrorPolicy;
  /// Specifies the retry policy associated with this route.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionRetryPolicy?>? retryPolicy;
  /// Specifies the timeout for the selected route. Timeout is computed from the time
  /// the request is has been fully processed (i.e. end-of-stream) up until the
  /// response has been completely processed. Timeout includes all retries. If not
  /// specified, the default value is 15 seconds.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionTimeout?>? timeout;
  /// The spec to modify the URL of the request, prior to forwarding the request to
  /// the matched service
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteActionUrlRewrite?>? urlRewrite;
  /// A list of weighted backend services to send traffic to when a route match
  /// occurs. The weights determine the fraction of traffic that flows to their
  /// corresponding backend service. If all traffic needs to go to a single backend
  /// service, there must be one  weightedBackendService with weight set to a non 0
  /// number. Once a backendService is identified and before forwarding the request to
  /// the backend service, advanced routing actions like Url rewrites and header
  /// transformations are applied depending on additional settings specified in this
  /// HttpRouteAction.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleRouteActionWeightedBackendService>?>? weightedBackendServices;

  /// Creates a new [URLMapPathMatcherRouteRuleRouteAction].
  /// [cachePolicy] Specifies the cache policy configuration for matched traffic. Available
  /// [corsPolicy] The specification for allowing client side cross-origin requests. Please see W3C
  /// [faultInjectionPolicy] The specification for fault injection introduced into traffic to test the
  /// [maxStreamDuration] Specifies the maximum duration (timeout) for streams on the selected route.
  /// [requestMirrorPolicy] Specifies the policy on how requests intended for the route's backends are
  /// [retryPolicy] Specifies the retry policy associated with this route.
  /// [timeout] Specifies the timeout for the selected route. Timeout is computed from the time
  /// [urlRewrite] The spec to modify the URL of the request, prior to forwarding the request to
  /// [weightedBackendServices] A list of weighted backend services to send traffic to when a route match
  const URLMapPathMatcherRouteRuleRouteAction({
    this.cachePolicy,
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
      'cachePolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteActionCachePolicy, Map<String, dynamic>>(cachePolicy, (value) => value.toMap()),
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
      cachePolicy: (() { final guardedValue = map['cachePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCachePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsPolicy: (() { final guardedValue = map['corsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionCorsPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      faultInjectionPolicy: (() { final guardedValue = map['faultInjectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionFaultInjectionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxStreamDuration: (() { final guardedValue = map['maxStreamDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionMaxStreamDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestMirrorPolicy: (() { final guardedValue = map['requestMirrorPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionRequestMirrorPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionRetryPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionTimeout.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRewrite: (() { final guardedValue = map['urlRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteActionUrlRewrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weightedBackendServices: (() { final guardedValue = map['weightedBackendServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapPathMatcherRouteRuleRouteActionWeightedBackendService>(guardedValue, (value) => URLMapPathMatcherRouteRuleRouteActionWeightedBackendService.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
