// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_url_map_path_matcher_route_rule_header_action.dart';
import 'region_url_map_path_matcher_route_rule_match_rule.dart';
import 'region_url_map_path_matcher_route_rule_route_action.dart';
import 'region_url_map_path_matcher_route_rule_url_redirect.dart';

class RegionUrlMapPathMatcherRouteRule {
  /// Specifies changes to request and response headers that need to take effect for
  /// the selected backendService. The headerAction specified here are applied before
  /// the matching pathMatchers[].headerAction and after pathMatchers[].routeRules[].r
  /// outeAction.weightedBackendService.backendServiceWeightAction[].headerAction
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherRouteRuleHeaderAction>? headerAction;
  /// The rules for determining a match.
  /// Structure is documented below.
  final pulumi.Input<List<RegionUrlMapPathMatcherRouteRuleMatchRule>>? matchRules;
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
  final pulumi.Input<RegionUrlMapPathMatcherRouteRuleRouteAction>? routeAction;
  /// The region backend service resource to which traffic is
  /// directed if this rule is matched. If routeAction is additionally specified,
  /// advanced routing actions like URL Rewrites, etc. take effect prior to sending
  /// the request to the backend. However, if service is specified, routeAction cannot
  /// contain any weightedBackendService s. Conversely, if routeAction specifies any
  /// weightedBackendServices, service must not be specified. Only one of urlRedirect,
  /// service or routeAction.weightedBackendService must be set.
  final pulumi.Input<String>? service;
  /// When this rule is matched, the request is redirected to a URL specified by
  /// urlRedirect. If urlRedirect is specified, service or routeAction must not be
  /// set.
  /// Structure is documented below.
  final pulumi.Input<RegionUrlMapPathMatcherRouteRuleUrlRedirect>? urlRedirect;

  /// Creates a new [RegionUrlMapPathMatcherRouteRule].
  /// [headerAction] Specifies changes to request and response headers that need to take effect for
  /// [matchRules] The rules for determining a match.
  /// [priority] For routeRules within a given pathMatcher, priority determines the order
  /// [routeAction] In response to a matching matchRule, the load balancer performs advanced routing
  /// [service] The region backend service resource to which traffic is
  /// [urlRedirect] When this rule is matched, the request is redirected to a URL specified by
  RegionUrlMapPathMatcherRouteRule({
    this.headerAction,
    this.matchRules,
    required this.priority,
    this.routeAction,
    this.service,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerAction': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherRouteRuleHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'matchRules': ?pulumi.Input.mapOptionalInputValue<List<RegionUrlMapPathMatcherRouteRuleMatchRule>, List<Map<String, dynamic>>>(matchRules, (value) => pulumi.Input.encodeList<RegionUrlMapPathMatcherRouteRuleMatchRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'routeAction': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherRouteRuleRouteAction, Map<String, dynamic>>(routeAction, (value) => value.toMap()),
      'service': ?service,
      'urlRedirect': ?pulumi.Input.mapOptionalInputValue<RegionUrlMapPathMatcherRouteRuleUrlRedirect, Map<String, dynamic>>(urlRedirect, (value) => value.toMap()),
    };
  }

  factory RegionUrlMapPathMatcherRouteRule.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapPathMatcherRouteRule(
      headerAction: map['headerAction'] == null ? null : (RegionUrlMapPathMatcherRouteRuleHeaderAction.fromMap((map['headerAction']! as Map).cast<String, dynamic>())).input(),
      matchRules: map['matchRules'] == null ? null : (pulumi.Input.decodeList<RegionUrlMapPathMatcherRouteRuleMatchRule>(map['matchRules']!, (value) => RegionUrlMapPathMatcherRouteRuleMatchRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: (map['priority'] as int).input(),
      routeAction: map['routeAction'] == null ? null : (RegionUrlMapPathMatcherRouteRuleRouteAction.fromMap((map['routeAction']! as Map).cast<String, dynamic>())).input(),
      service: map['service'] == null ? null : (map['service']! as String).input(),
      urlRedirect: map['urlRedirect'] == null ? null : (RegionUrlMapPathMatcherRouteRuleUrlRedirect.fromMap((map['urlRedirect']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

