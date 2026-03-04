// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cdn_policy.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_cors_policy.dart';
import 'edge_cache_service_routing_path_matcher_route_rule_route_action_url_rewrite.dart';

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction {
  /// The policy to use for defining caching and signed request behaviour for requests that match this route.
  /// Structure is documented below.
  final pulumi.Input<
    EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy
  >?
  cdnPolicy;

  /// Setting the compression mode to automatic enables dynamic compression for every eligible response.
  /// When dynamic compression is enabled, it is recommended to also set a cache policy to maximize efficiency.
  /// Possible values are: `DISABLED`, `AUTOMATIC`.
  final pulumi.Input<String>? compressionMode;

  /// CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set.
  /// Structure is documented below.
  final pulumi.Input<
    EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy
  >?
  corsPolicy;

  /// The URL rewrite configuration for requests that match this route.
  /// Structure is documented below.
  final pulumi.Input<
    EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite
  >?
  urlRewrite;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction].
  /// [cdnPolicy] The policy to use for defining caching and signed request behaviour for requests that match this route.
  /// [compressionMode] Setting the compression mode to automatic enables dynamic compression for every eligible response.
  /// [corsPolicy] CORSPolicy defines Cross-Origin-Resource-Sharing configuration, including which CORS response headers will be set.
  /// [urlRewrite] The URL rewrite configuration for requests that match this route.
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction({
    this.cdnPolicy,
    this.compressionMode,
    this.corsPolicy,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy,
            Map<String, dynamic>
          >(cdnPolicy, (value) => value.toMap()),
      'compressionMode': ?compressionMode,
      'corsPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy,
            Map<String, dynamic>
          >(corsPolicy, (value) => value.toMap()),
      'urlRewrite':
          ?pulumi.Input.mapOptionalInputValue<
            EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite,
            Map<String, dynamic>
          >(urlRewrite, (value) => value.toMap()),
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteAction(
      cdnPolicy: (() {
        final guardedValue = map['cdnPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      compressionMode: (() {
        final guardedValue = map['compressionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      corsPolicy: (() {
        final guardedValue = map['corsPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      urlRewrite: (() {
        final guardedValue = map['urlRewrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionUrlRewrite.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
