// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_host_rule.dart';
import 'edge_cache_service_routing_path_matcher.dart';

class EdgeCacheServiceRouting {
  /// The list of hostRules to match against. These rules define which hostnames the EdgeCacheService will match against, and which route configurations apply.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingHostRule>> hostRules;

  /// The list of pathMatchers referenced via name by hostRules. PathMatcher is used to match the path portion of the URL when a HostRule matches the URL's host portion.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheServiceRoutingPathMatcher>> pathMatchers;

  /// Creates a new [EdgeCacheServiceRouting].
  /// [hostRules] The list of hostRules to match against. These rules define which hostnames the EdgeCacheService will match against, and which route configurations apply.
  /// [pathMatchers] The list of pathMatchers referenced via name by hostRules. PathMatcher is used to match the path portion of the URL when a HostRule matches the URL's host portion.
  EdgeCacheServiceRouting({
    required this.hostRules,
    required this.pathMatchers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRules':
          pulumi.Input.mapInputValue<
            List<EdgeCacheServiceRoutingHostRule>,
            List<Map<String, dynamic>>
          >(
            hostRules,
            (value) =>
                pulumi.Input.encodeList<
                  EdgeCacheServiceRoutingHostRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'pathMatchers':
          pulumi.Input.mapInputValue<
            List<EdgeCacheServiceRoutingPathMatcher>,
            List<Map<String, dynamic>>
          >(
            pathMatchers,
            (value) =>
                pulumi.Input.encodeList<
                  EdgeCacheServiceRoutingPathMatcher,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EdgeCacheServiceRouting.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRouting(
      hostRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EdgeCacheServiceRoutingHostRule>(
          map['hostRules']!,
          (value) => EdgeCacheServiceRoutingHostRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      pathMatchers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EdgeCacheServiceRoutingPathMatcher>(
          map['pathMatchers']!,
          (value) => EdgeCacheServiceRoutingPathMatcher.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
