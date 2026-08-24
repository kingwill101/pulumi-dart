// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_adaptive_routing.dart';
import 'load_balancer_location_strategy.dart';
import 'load_balancer_random_steering.dart';
import 'load_balancer_rule.dart';
import 'load_balancer_session_affinity_attributes.dart';

/// {@template pulumi_index_load_balancer_load_balancer_args_doc}
/// The set of arguments for LoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_load_balancer_load_balancer_args_doc}
class LoadBalancerArgs {
  /// Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  final pulumi.Input<LoadBalancerAdaptiveRouting?>? adaptiveRouting;
  /// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  final pulumi.Input<Map<String, List<String>>?>? countryPools;
  /// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  final pulumi.Input<List<String>> defaultPools;
  /// Object description.
  final pulumi.Input<String?>? description;
  /// Whether to enable (the default) this load balancer.
  final pulumi.Input<bool?>? enabled;
  /// The pool ID to use when all other pools are detected as unhealthy.
  final pulumi.Input<String> fallbackPool;
  /// Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  final pulumi.Input<LoadBalancerLocationStrategy?>? locationStrategy;
  /// The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
  final pulumi.Input<String> name;
  /// List of networks where Load Balancer or Pool is enabled.
  final pulumi.Input<List<String>?>? networks;
  /// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  final pulumi.Input<Map<String, List<String>>?>? popPools;
  /// Whether the hostname should be gray clouded (false) or orange clouded (true).
  final pulumi.Input<bool?>? proxied;
  /// Configures pool weights.
  final pulumi.Input<LoadBalancerRandomSteering?>? randomSteering;
  /// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  final pulumi.Input<Map<String, List<String>>?>? regionPools;
  /// BETA Field Not General Access: A list of rules for this load balancer to execute.
  final pulumi.Input<List<LoadBalancerRule>?>? rules;
  /// Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// Available values: "none", "cookie", "ipCookie", "header".
  final pulumi.Input<String?>? sessionAffinity;
  /// Configures attributes for session affinity.
  final pulumi.Input<LoadBalancerSessionAffinityAttributes?>? sessionAffinityAttributes;
  /// Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  final pulumi.Input<double?>? sessionAffinityTtl;
  /// Steering Policy for this load balancer.
  final pulumi.Input<String?>? steeringPolicy;
  /// Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  final pulumi.Input<double?>? ttl;
  final pulumi.Input<String> zoneId;

  /// Creates a new [LoadBalancerArgs].
  /// [adaptiveRouting] Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  /// [countryPools] A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  /// [defaultPools] A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  /// [description] Object description.
  /// [enabled] Whether to enable (the default) this load balancer.
  /// [fallbackPool] The pool ID to use when all other pools are detected as unhealthy.
  /// [locationStrategy] Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  /// [name] The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
  /// [networks] List of networks where Load Balancer or Pool is enabled.
  /// [popPools] Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  /// [proxied] Whether the hostname should be gray clouded (false) or orange clouded (true).
  /// [randomSteering] Configures pool weights.
  /// [regionPools] A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  /// [rules] BETA Field Not General Access: A list of rules for this load balancer to execute.
  /// [sessionAffinity] Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// [sessionAffinityAttributes] Configures attributes for session affinity.
  /// [sessionAffinityTtl] Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  /// [steeringPolicy] Steering Policy for this load balancer.
  /// [ttl] Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  /// [zoneId] Required.
  const LoadBalancerArgs({
    this.adaptiveRouting,
    this.countryPools,
    required this.defaultPools,
    this.description,
    this.enabled,
    required this.fallbackPool,
    this.locationStrategy,
    required this.name,
    this.networks,
    this.popPools,
    this.proxied,
    this.randomSteering,
    this.regionPools,
    this.rules,
    this.sessionAffinity,
    this.sessionAffinityAttributes,
    this.sessionAffinityTtl,
    this.steeringPolicy,
    this.ttl,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveRouting': ?pulumi.Input.mapOptionalInputValue<LoadBalancerAdaptiveRouting, Map<String, dynamic>>(adaptiveRouting, (value) => value.toMap()),
      'countryPools': ?countryPools,
      'defaultPools': defaultPools,
      'description': ?description,
      'enabled': ?enabled,
      'fallbackPool': fallbackPool,
      'locationStrategy': ?pulumi.Input.mapOptionalInputValue<LoadBalancerLocationStrategy, Map<String, dynamic>>(locationStrategy, (value) => value.toMap()),
      'name': name,
      'networks': ?networks,
      'popPools': ?popPools,
      'proxied': ?proxied,
      'randomSteering': ?pulumi.Input.mapOptionalInputValue<LoadBalancerRandomSteering, Map<String, dynamic>>(randomSteering, (value) => value.toMap()),
      'regionPools': ?regionPools,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<LoadBalancerRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionAffinity': ?sessionAffinity,
      'sessionAffinityAttributes': ?pulumi.Input.mapOptionalInputValue<LoadBalancerSessionAffinityAttributes, Map<String, dynamic>>(sessionAffinityAttributes, (value) => value.toMap()),
      'sessionAffinityTtl': ?sessionAffinityTtl,
      'steeringPolicy': ?steeringPolicy,
      'ttl': ?ttl,
      'zoneId': zoneId,
    };
  }

  factory LoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerArgs(
      adaptiveRouting: (() { final guardedValue = map['adaptiveRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerAdaptiveRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      countryPools: (() { final guardedValue = map['countryPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      defaultPools: pulumi.Input.fromValue((map['defaultPools'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fallbackPool: pulumi.Input.fromValue(map['fallbackPool'] as String),
      locationStrategy: (() { final guardedValue = map['locationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerLocationStrategy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      popPools: (() { final guardedValue = map['popPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      proxied: (() { final guardedValue = map['proxied']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      randomSteering: (() { final guardedValue = map['randomSteering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerRandomSteering.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regionPools: (() { final guardedValue = map['regionPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoadBalancerRule>(guardedValue, (value) => LoadBalancerRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionAffinityAttributes: (() { final guardedValue = map['sessionAffinityAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoadBalancerSessionAffinityAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionAffinityTtl: (() { final guardedValue = map['sessionAffinityTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      steeringPolicy: (() { final guardedValue = map['steeringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
