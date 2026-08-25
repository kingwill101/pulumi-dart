// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'urlmap_path_matcher_route_rule_custom_error_response_policy.dart';
import 'urlmap_path_matcher_route_rule_header_action.dart';
import 'urlmap_path_matcher_route_rule_http_filter_config.dart';
import 'urlmap_path_matcher_route_rule_http_filter_metadata.dart';
import 'urlmap_path_matcher_route_rule_match_rule.dart';
import 'urlmap_path_matcher_route_rule_route_action.dart';
import 'urlmap_path_matcher_route_rule_url_redirect.dart';

class URLMapPathMatcherRouteRule {
  /// customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleCustomErrorResponsePolicy?>? customErrorResponsePolicy;
  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here are applied before
  /// the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].r
  /// outeAction.weightedBackendService.backendServiceWeightAction[].headerAction
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleHeaderAction?>? headerAction;
  /// (Optional, Beta)
  /// Outbound route specific configuration for networkservices.HttpFilter resources enabled by Traffic Director.
  /// httpFilterConfigs only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// See ForwardingRule for more details.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleHttpFilterConfig>?>? httpFilterConfigs;
  /// (Optional, Beta)
  /// Outbound route specific metadata supplied to networkservices.HttpFilter resources enabled by Traffic Director.
  /// httpFilterMetadata only applies for load balancers with loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  /// See ForwardingRule for more details.
  /// Not supported when the URL map is bound to a target gRPC proxy that has validateForProxyless field set to true.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleHttpFilterMetadata>?>? httpFilterMetadatas;
  /// The rules for determining a match.
  /// Structure is documented below.
  final pulumi.Input<List<URLMapPathMatcherRouteRuleMatchRule>?>? matchRules;
  /// For routeRules within a given pathMatcher, priority determines the order
  /// in which load balancer will interpret routeRules. RouteRules are evaluated
  /// in order of priority, from the lowest to highest number. The priority of
  /// a rule decreases as its number increases (1, 2, 3, N+1). The first rule
  /// that matches the request is applied.
  /// You cannot configure two or more routeRules with the same priority.
  /// Priority for each rule must be set to a number between 0 and
  /// 2147483647 inclusive.
  /// Priority numbers can have gaps, which enable you to add or remove rules
  /// in the future without affecting the rest of the rules. For example,
  /// 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers to which
  /// you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the
  /// future without any impact on existing rules.
  final pulumi.Input<int> priority;
  /// In response to a matching matchRule, the load balancer performs advanced routing
  /// actions like URL rewrites, header transformations, etc. prior to forwarding the
  /// request to the selected backend. If  routeAction specifies any
  /// weightedBackendServices, service must not be set. Conversely if service is set,
  /// routeAction cannot contain any  weightedBackendServices. Only one of routeAction
  /// or urlRedirect must be set.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleRouteAction?>? routeAction;
  /// The backend service resource to which traffic is
  /// directed if this rule is matched. If routeAction is additionally specified,
  /// advanced routing actions like URL Rewrites, etc. take effect prior to sending
  /// the request to the backend. However, if service is specified, routeAction cannot
  /// contain any weightedBackendService s. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified. Only one of urlRedirect,
  /// service or routeAction.weightedBackendService must be set.
  final pulumi.Input<String?>? service;
  /// When this rule is matched, the request is redirected to a URL specified by
  /// urlRedirect. If urlRedirect is specified, service or routeAction must not be
  /// set.
  /// Structure is documented below.
  final pulumi.Input<URLMapPathMatcherRouteRuleUrlRedirect?>? urlRedirect;

  /// Creates a new [URLMapPathMatcherRouteRule].
  /// [customErrorResponsePolicy] customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendService or BackendBucket responds with an error.
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [httpFilterConfigs] (Optional, Beta)
  /// [httpFilterMetadatas] (Optional, Beta)
  /// [matchRules] The rules for determining a match.
  /// [priority] For routeRules within a given pathMatcher, priority determines the order
  /// [routeAction] In response to a matching matchRule, the load balancer performs advanced routing
  /// [service] The backend service resource to which traffic is
  /// [urlRedirect] When this rule is matched, the request is redirected to a URL specified by
  const URLMapPathMatcherRouteRule({
    this.customErrorResponsePolicy,
    this.headerAction,
    this.httpFilterConfigs,
    this.httpFilterMetadatas,
    this.matchRules,
    required this.priority,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customErrorResponsePolicy': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleCustomErrorResponsePolicy, Map<String, dynamic>>(customErrorResponsePolicy, (value) => value.toMap()),
      'headerAction': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'httpFilterConfigs': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleHttpFilterConfig>, List<Map<String, dynamic>>>(httpFilterConfigs, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleHttpFilterConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpFilterMetadatas': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleHttpFilterMetadata>, List<Map<String, dynamic>>>(httpFilterMetadatas, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleHttpFilterMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchRules': ?pulumi.Input.mapOptionalInputValue<List<URLMapPathMatcherRouteRuleMatchRule>, List<Map<String, dynamic>>>(matchRules, (value) => pulumi.Input.encodeList<URLMapPathMatcherRouteRuleMatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'routeAction': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleRouteAction, Map<String, dynamic>>(routeAction, (value) => value.toMap()),
      'service': ?service,
      'urlRedirect': ?pulumi.Input.mapOptionalInputValue<URLMapPathMatcherRouteRuleUrlRedirect, Map<String, dynamic>>(urlRedirect, (value) => value.toMap()),
    };
  }

  factory URLMapPathMatcherRouteRule.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRule(
      customErrorResponsePolicy: (() { final guardedValue = map['customErrorResponsePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleCustomErrorResponsePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpFilterConfigs: (() { final guardedValue = map['httpFilterConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapPathMatcherRouteRuleHttpFilterConfig>(guardedValue, (value) => URLMapPathMatcherRouteRuleHttpFilterConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      httpFilterMetadatas: (() { final guardedValue = map['httpFilterMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapPathMatcherRouteRuleHttpFilterMetadata>(guardedValue, (value) => URLMapPathMatcherRouteRuleHttpFilterMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      matchRules: (() { final guardedValue = map['matchRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<URLMapPathMatcherRouteRuleMatchRule>(guardedValue, (value) => URLMapPathMatcherRouteRuleMatchRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      routeAction: (() { final guardedValue = map['routeAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleRouteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlRedirect: (() { final guardedValue = map['urlRedirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(URLMapPathMatcherRouteRuleUrlRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
