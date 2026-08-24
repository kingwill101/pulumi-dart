// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_rule_overrides_adaptive_routing.dart';
import 'load_balancer_rule_overrides_location_strategy.dart';
import 'load_balancer_rule_overrides_random_steering.dart';
import 'load_balancer_rule_overrides_session_affinity_attributes.dart';

class LoadBalancerRuleOverrides {
  /// Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  final pulumi.Input<LoadBalancerRuleOverridesAdaptiveRouting?>? adaptiveRouting;
  /// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  final pulumi.Input<Map<String, List<String>>?>? countryPools;
  /// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  final pulumi.Input<List<String>?>? defaultPools;
  /// The pool ID to use when all other pools are detected as unhealthy.
  final pulumi.Input<String?>? fallbackPool;
  /// Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  final pulumi.Input<LoadBalancerRuleOverridesLocationStrategy?>? locationStrategy;
  /// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  final pulumi.Input<Map<String, List<String>>?>? popPools;
  /// Configures pool weights.
  final pulumi.Input<LoadBalancerRuleOverridesRandomSteering?>? randomSteering;
  /// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  final pulumi.Input<Map<String, List<String>>?>? regionPools;
  /// Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// Available values: "none", "cookie", "ipCookie", "header".
  final pulumi.Input<String?>? sessionAffinity;
  /// Configures attributes for session affinity.
  final pulumi.Input<LoadBalancerRuleOverridesSessionAffinityAttributes?>? sessionAffinityAttributes;
  /// Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  final pulumi.Input<double?>? sessionAffinityTtl;
  /// Steering Policy for this load balancer.
  final pulumi.Input<String?>? steeringPolicy;
  /// Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  final pulumi.Input<double?>? ttl;

  /// Creates a new [LoadBalancerRuleOverrides].
  /// [adaptiveRouting] Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  /// [countryPools] A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  /// [defaultPools] A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  /// [fallbackPool] The pool ID to use when all other pools are detected as unhealthy.
  /// [locationStrategy] Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  /// [popPools] Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  /// [randomSteering] Configures pool weights.
  /// [regionPools] A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  /// [sessionAffinity] Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// [sessionAffinityAttributes] Configures attributes for session affinity.
  /// [sessionAffinityTtl] Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  /// [steeringPolicy] Steering Policy for this load balancer.
  /// [ttl] Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  const LoadBalancerRuleOverrides({
    this.adaptiveRouting,
    this.countryPools,
    this.defaultPools,
    this.fallbackPool,
    this.locationStrategy,
    this.popPools,
    this.randomSteering,
    this.regionPools,
    this.sessionAffinity,
    this.sessionAffinityAttributes,
    this.sessionAffinityTtl,
    this.steeringPolicy,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveRouting': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRuleOverridesAdaptiveRouting, Map<String, dynamic>>(adaptiveRouting, (value) => value.toMap()),
      'countryPools': ?countryPools,
      'defaultPools': ?defaultPools,
      'fallbackPool': ?fallbackPool,
      'locationStrategy': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRuleOverridesLocationStrategy, Map<String, dynamic>>(locationStrategy, (value) => value.toMap()),
      'popPools': ?popPools,
      'randomSteering': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRuleOverridesRandomSteering, Map<String, dynamic>>(randomSteering, (value) => value.toMap()),
      'regionPools': ?regionPools,
      'sessionAffinity': ?sessionAffinity,
      'sessionAffinityAttributes': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRuleOverridesSessionAffinityAttributes, Map<String, dynamic>>(sessionAffinityAttributes, (value) => value.toMap()),
      'sessionAffinityTtl': ?sessionAffinityTtl,
      'steeringPolicy': ?steeringPolicy,
      'ttl': ?ttl,
    };
  }

  factory LoadBalancerRuleOverrides.fromMap(Map<String, dynamic> map) {
    return LoadBalancerRuleOverrides(
      adaptiveRouting: (() { final guardedValue = map['adaptiveRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerRuleOverridesAdaptiveRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      countryPools: (() { final guardedValue = map['countryPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      defaultPools: (() { final guardedValue = map['defaultPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fallbackPool: (() { final guardedValue = map['fallbackPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationStrategy: (() { final guardedValue = map['locationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerRuleOverridesLocationStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      popPools: (() { final guardedValue = map['popPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      randomSteering: (() { final guardedValue = map['randomSteering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerRuleOverridesRandomSteering.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regionPools: (() { final guardedValue = map['regionPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionAffinityAttributes: (() { final guardedValue = map['sessionAffinityAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerRuleOverridesSessionAffinityAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionAffinityTtl: (() { final guardedValue = map['sessionAffinityTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      steeringPolicy: (() { final guardedValue = map['steeringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
