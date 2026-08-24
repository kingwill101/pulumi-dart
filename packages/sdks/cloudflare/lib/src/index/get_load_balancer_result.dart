// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancer_adaptive_routing.dart';
import 'get_load_balancer_location_strategy.dart';
import 'get_load_balancer_random_steering.dart';
import 'get_load_balancer_rule.dart';
import 'get_load_balancer_session_affinity_attributes.dart';

/// Result data returned by getLoadBalancer.
class GetLoadBalancerResult {
  /// Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  final GetLoadBalancerAdaptiveRouting? adaptiveRouting;
  /// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  final Map<String, List<String>>? countryPools;
  final String? createdOn;
  /// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  final List<String>? defaultPools;
  /// Object description.
  final String? description;
  /// Whether to enable (the default) this load balancer.
  final bool? enabled;
  /// The pool ID to use when all other pools are detected as unhealthy.
  final String? fallbackPool;
  /// The ID of this resource.
  final String? id;
  final String? loadBalancerId;
  /// Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  final GetLoadBalancerLocationStrategy? locationStrategy;
  final String? modifiedOn;
  /// The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
  final String? name;
  /// List of networks where Load Balancer or Pool is enabled.
  final List<String>? networks;
  /// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  final Map<String, List<String>>? popPools;
  /// Whether the hostname should be gray clouded (false) or orange clouded (true).
  final bool? proxied;
  /// Configures pool weights.
  final GetLoadBalancerRandomSteering? randomSteering;
  /// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  final Map<String, List<String>>? regionPools;
  /// BETA Field Not General Access: A list of rules for this load balancer to execute.
  final List<GetLoadBalancerRule>? rules;
  /// Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// Available values: "none", "cookie", "ipCookie", "header".
  final String? sessionAffinity;
  /// Configures attributes for session affinity.
  final GetLoadBalancerSessionAffinityAttributes? sessionAffinityAttributes;
  /// Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  final double? sessionAffinityTtl;
  /// Steering Policy for this load balancer.
  final String? steeringPolicy;
  /// Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  final double? ttl;
  final String? zoneId;

  /// Creates a new [GetLoadBalancerResult].
  /// [adaptiveRouting] Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  /// [countryPools] A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  /// [createdOn] Optional.
  /// [defaultPools] A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  /// [description] Object description.
  /// [enabled] Whether to enable (the default) this load balancer.
  /// [fallbackPool] The pool ID to use when all other pools are detected as unhealthy.
  /// [id] The ID of this resource.
  /// [loadBalancerId] Optional.
  /// [locationStrategy] Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  /// [modifiedOn] Optional.
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
  /// [zoneId] Optional.
  const GetLoadBalancerResult({
    this.adaptiveRouting,
    this.countryPools,
    this.createdOn,
    this.defaultPools,
    this.description,
    this.enabled,
    this.fallbackPool,
    this.id,
    this.loadBalancerId,
    this.locationStrategy,
    this.modifiedOn,
    this.name,
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
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveRouting': ?adaptiveRouting?.toMap(),
      'countryPools': ?countryPools,
      'createdOn': ?createdOn,
      'defaultPools': ?defaultPools,
      'description': ?description,
      'enabled': ?enabled,
      'fallbackPool': ?fallbackPool,
      'id': ?id,
      'loadBalancerId': ?loadBalancerId,
      'locationStrategy': ?locationStrategy?.toMap(),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'networks': ?networks,
      'popPools': ?popPools,
      'proxied': ?proxied,
      'randomSteering': ?randomSteering?.toMap(),
      'regionPools': ?regionPools,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLoadBalancerRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sessionAffinity': ?sessionAffinity,
      'sessionAffinityAttributes': ?sessionAffinityAttributes?.toMap(),
      'sessionAffinityTtl': ?sessionAffinityTtl,
      'steeringPolicy': ?steeringPolicy,
      'ttl': ?ttl,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancerResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerResult(
      adaptiveRouting: (() { final guardedValue = map['adaptiveRouting']; if (guardedValue == null) return null; return GetLoadBalancerAdaptiveRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      countryPools: (() { final guardedValue = map['countryPools']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPools: (() { final guardedValue = map['defaultPools']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fallbackPool: (() { final guardedValue = map['fallbackPool']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationStrategy: (() { final guardedValue = map['locationStrategy']; if (guardedValue == null) return null; return GetLoadBalancerLocationStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      popPools: (() { final guardedValue = map['popPools']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
      proxied: (() { final guardedValue = map['proxied']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      randomSteering: (() { final guardedValue = map['randomSteering']; if (guardedValue == null) return null; return GetLoadBalancerRandomSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      regionPools: (() { final guardedValue = map['regionPools']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLoadBalancerRule>(guardedValue, (value) => GetLoadBalancerRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sessionAffinityAttributes: (() { final guardedValue = map['sessionAffinityAttributes']; if (guardedValue == null) return null; return GetLoadBalancerSessionAffinityAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sessionAffinityTtl: (() { final guardedValue = map['sessionAffinityTtl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      steeringPolicy: (() { final guardedValue = map['steeringPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
