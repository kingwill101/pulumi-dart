// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule.dart';

class EdgeCacheServiceRoutingPathMatcher {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// The name to which this PathMatcher is referred by the HostRule.
  final pulumi.Input<String> name;
  /// The routeRules to match against. routeRules support advanced routing behaviour, and can match on paths, headers and query parameters, as well as status codes and HTTP methods.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcherRouteRule>> routeRules;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcher].
  /// [description] A human-readable description of the resource.
  /// [name] The name to which this PathMatcher is referred by the HostRule.
  /// [routeRules] The routeRules to match against. routeRules support advanced routing behaviour, and can match on paths, headers and query parameters, as well as status codes and HTTP methods.
  const EdgeCacheServiceRoutingPathMatcher({
    this.description,
    required this.name,
    required this.routeRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'routeRules': pulumi.Input.mapInputValue<List<EdgeCacheServiceRoutingPathMatcherRouteRule>, List<Map<String, dynamic>>>(routeRules, (value) => pulumi.Input.encodeList<EdgeCacheServiceRoutingPathMatcherRouteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EdgeCacheServiceRoutingPathMatcher.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcher(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routeRules: pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcherRouteRule>(map['routeRules']!, (value) => EdgeCacheServiceRoutingPathMatcherRouteRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

