// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule_header_action.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_match_rule.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_methods.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_url_redirect.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRule {
  /// A human-readable description of the routeRule.
  final String? description;
  /// The header actions, including adding & removing headers, for requests that match this route.
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction? headerAction;
  /// The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates
  /// within a given matchRule have AND semantics. All predicates within a matchRule must match for the request to match the rule.
  /// Structure is documented below.
  final List<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule> matchRules;
  /// The Origin resource that requests to this route should fetch from when a matching response is not in cache. Origins can be defined as short names ("my-origin") or fully-qualified resource URLs - e.g. "networkservices.googleapis.com/projects/my-project/global/edgecacheorigins/my-origin"
  /// Only one of origin or urlRedirect can be set.
  final String? origin;
  /// The priority of this route rule, where 1 is the highest priority.
  /// You cannot configure two or more routeRules with the same priority. Priority for each rule must be set to a number between 1 and 999 inclusive.
  /// Priority numbers can have gaps, which enable you to add or remove rules in the future without affecting the rest of the rules. For example, 1, 2, 3, 4, 5, 9, 12, 16 is a valid series of priority numbers
  /// to which you could add rules numbered from 6 to 8, 10 to 11, and 13 to 15 in the future without any impact on existing rules.
  final String priority;
  /// In response to a matching path, the routeAction performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected origin.
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction? routeAction;
  /// Allow overriding the set of methods that are allowed for this route.
  /// When not set, Media CDN allows only "GET", "HEAD", and "OPTIONS".
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods? routeMethods;
  /// The URL redirect configuration for requests that match this route.
  /// Structure is documented below.
  final EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect? urlRedirect;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRule].
  /// [description] A human-readable description of the routeRule.
  /// [headerAction] The header actions, including adding & removing headers, for requests that match this route.
  /// [matchRules] The list of criteria for matching attributes of a request to this routeRule. This list has OR semantics: the request matches this routeRule when any of the matchRules are satisfied. However predicates
  /// [origin] The Origin resource that requests to this route should fetch from when a matching response is not in cache. Origins can be defined as short names ("my-origin") or fully-qualified resource URLs - e.g. "networkservices.googleapis.com/projects/my-project/global/edgecacheorigins/my-origin"
  /// [priority] The priority of this route rule, where 1 is the highest priority.
  /// [routeAction] In response to a matching path, the routeAction performs advanced routing actions like URL rewrites, header transformations, etc. prior to forwarding the request to the selected origin.
  /// [routeMethods] Allow overriding the set of methods that are allowed for this route.
  /// [urlRedirect] The URL redirect configuration for requests that match this route.
  EdgeCacheServiceRoutingPathMatcherRouteRule({
    this.description,
    this.headerAction,
    required this.matchRules,
    this.origin,
    required this.priority,
    this.routeAction,
    this.routeMethods,
    this.urlRedirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'headerAction': ?headerAction == null ? null : headerAction!.toMap(),
      'matchRules': pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule, Map<String, dynamic>>(matchRules, (value) => value.toMap()),
      'origin': ?origin,
      'priority': priority,
      'routeAction': ?routeAction == null ? null : routeAction!.toMap(),
      'routeMethods': ?routeMethods == null ? null : routeMethods!.toMap(),
      'urlRedirect': ?urlRedirect == null ? null : urlRedirect!.toMap(),
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRule.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRule(
      description: map['description'] == null ? null : map['description'] as String,
      headerAction: map['headerAction'] == null ? null : EdgeCacheServiceRoutingPathMatcherRouteRuleHeaderAction.fromMap((map['headerAction'] as Map).cast<String, dynamic>()),
      matchRules: pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule>(map['matchRules'], (value) => EdgeCacheServiceRoutingPathMatcherRouteRuleMatchRule.fromMap((value as Map).cast<String, dynamic>())),
      origin: map['origin'] == null ? null : map['origin'] as String,
      priority: map['priority'] as String,
      routeAction: map['routeAction'] == null ? null : EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction.fromMap((map['routeAction'] as Map).cast<String, dynamic>()),
      routeMethods: map['routeMethods'] == null ? null : EdgeCacheServiceRoutingPathMatcherRouteRuleRouteMethods.fromMap((map['routeMethods'] as Map).cast<String, dynamic>()),
      urlRedirect: map['urlRedirect'] == null ? null : EdgeCacheServiceRoutingPathMatcherRouteRuleUrlRedirect.fromMap((map['urlRedirect'] as Map).cast<String, dynamic>()),
    );
  }
}

