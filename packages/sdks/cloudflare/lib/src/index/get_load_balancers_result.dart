// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_load_balancers_result_adaptive_routing.dart';
import 'get_load_balancers_result_location_strategy.dart';
import 'get_load_balancers_result_random_steering.dart';
import 'get_load_balancers_result_rule.dart';
import 'get_load_balancers_result_session_affinity_attributes.dart';

class GetLoadBalancersResult {
  /// Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  final pulumi.Input<GetLoadBalancersResultAdaptiveRouting> adaptiveRouting;
  /// A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  final pulumi.Input<Map<String, List<String>>> countryPools;
  final pulumi.Input<String> createdOn;
  /// A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  final pulumi.Input<List<String>> defaultPools;
  /// Object description.
  final pulumi.Input<String> description;
  /// Whether to enable (the default) this load balancer.
  final pulumi.Input<bool> enabled;
  /// The pool ID to use when all other pools are detected as unhealthy.
  final pulumi.Input<String> fallbackPool;
  final pulumi.Input<String> id;
  /// Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  final pulumi.Input<GetLoadBalancersResultLocationStrategy> locationStrategy;
  final pulumi.Input<String> modifiedOn;
  /// The DNS hostname to associate with your Load Balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the Load Balancer will take precedence and the DNS record will not be used.
  final pulumi.Input<String> name;
  /// List of networks where Load Balancer or Pool is enabled.
  final pulumi.Input<List<String>> networks;
  /// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  final pulumi.Input<Map<String, List<String>>> popPools;
  /// Whether the hostname should be gray clouded (false) or orange clouded (true).
  final pulumi.Input<bool> proxied;
  /// Configures pool weights.
  final pulumi.Input<GetLoadBalancersResultRandomSteering> randomSteering;
  /// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  final pulumi.Input<Map<String, List<String>>> regionPools;
  /// BETA Field Not General Access: A list of rules for this load balancer to execute.
  final pulumi.Input<List<GetLoadBalancersResultRule>> rules;
  /// Specifies the type of session affinity the load balancer should use unless specified as `"none"`. The supported types are: - `"cookie"`: On the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy, then a new origin server is calculated and used. - `"ipCookie"`: Behaves the same as `"cookie"` except the initial origin selection is stable and based on the client's ip address. - `"header"`: On the first request to a proxied load balancer, a session key based on the configured HTTP headers (see `session_affinity_attributes.headers`) is generated, encoding the request headers used for storing in the load balancer session state which origin the request will be forwarded to. Subsequent requests to the load balancer with the same headers will be sent to the same origin server, for the duration of the session and as long as the origin server remains healthy. If the session has been idle for the duration of `sessionAffinityTtl` seconds or the origin server is unhealthy, then a new origin server is calculated and used. See `headers` in `sessionAffinityAttributes` for additional required configuration.
  /// Available values: "none", "cookie", "ipCookie", "header".
  final pulumi.Input<String> sessionAffinity;
  /// Configures attributes for session affinity.
  final pulumi.Input<GetLoadBalancersResultSessionAffinityAttributes> sessionAffinityAttributes;
  /// Time, in seconds, until a client's session expires after being created. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. The accepted ranges per `sessionAffinity` policy are: - `"cookie"` / `"ipCookie"`: The current default of 23 hours will be used unless explicitly set. The accepted range of values is between [1800, 604800]. - `"header"`: The current default of 1800 seconds will be used unless explicitly set. The accepted range of values is between [30, 3600]. Note: With session affinity by header, sessions only expire after they haven't been used for the number of seconds specified.
  final pulumi.Input<double> sessionAffinityTtl;
  /// Steering Policy for this load balancer.
  final pulumi.Input<String> steeringPolicy;
  /// Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This only applies to gray-clouded (unproxied) load balancers.
  final pulumi.Input<double> ttl;
  final pulumi.Input<String> zoneName;

  /// Creates a new [GetLoadBalancersResult].
  /// [adaptiveRouting] Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. For example, zero-downtime failover occurs immediately when an origin becomes unavailable due to HTTP 521, 522, or 523 response codes. If there is another healthy origin in the same pool, the request is retried once against this alternate origin.
  /// [countryPools] A mapping of country codes to a list of pool IDs (ordered by their failover priority) for the given country. Any country not explicitly defined will fall back to using the corresponding region*pool mapping if it exists else to default*pools.
  /// [createdOn] Required.
  /// [defaultPools] A list of pool IDs ordered by their failover priority. Pools defined here are used by default, or when regionPools are not configured for a given region.
  /// [description] Object description.
  /// [enabled] Whether to enable (the default) this load balancer.
  /// [fallbackPool] The pool ID to use when all other pools are detected as unhealthy.
  /// [id] Required.
  /// [locationStrategy] Controls location-based steering for non-proxied requests. See `steeringPolicy` to learn how steering is affected.
  /// [modifiedOn] Required.
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
  /// [zoneName] Required.
  const GetLoadBalancersResult({
    required this.adaptiveRouting,
    required this.countryPools,
    required this.createdOn,
    required this.defaultPools,
    required this.description,
    required this.enabled,
    required this.fallbackPool,
    required this.id,
    required this.locationStrategy,
    required this.modifiedOn,
    required this.name,
    required this.networks,
    required this.popPools,
    required this.proxied,
    required this.randomSteering,
    required this.regionPools,
    required this.rules,
    required this.sessionAffinity,
    required this.sessionAffinityAttributes,
    required this.sessionAffinityTtl,
    required this.steeringPolicy,
    required this.ttl,
    required this.zoneName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveRouting': pulumi.Input.mapInputValue<GetLoadBalancersResultAdaptiveRouting, Map<String, dynamic>>(adaptiveRouting, (value) => value.toMap()),
      'countryPools': countryPools,
      'createdOn': createdOn,
      'defaultPools': defaultPools,
      'description': description,
      'enabled': enabled,
      'fallbackPool': fallbackPool,
      'id': id,
      'locationStrategy': pulumi.Input.mapInputValue<GetLoadBalancersResultLocationStrategy, Map<String, dynamic>>(locationStrategy, (value) => value.toMap()),
      'modifiedOn': modifiedOn,
      'name': name,
      'networks': networks,
      'popPools': popPools,
      'proxied': proxied,
      'randomSteering': pulumi.Input.mapInputValue<GetLoadBalancersResultRandomSteering, Map<String, dynamic>>(randomSteering, (value) => value.toMap()),
      'regionPools': regionPools,
      'rules': pulumi.Input.mapInputValue<List<GetLoadBalancersResultRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<GetLoadBalancersResultRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sessionAffinity': sessionAffinity,
      'sessionAffinityAttributes': pulumi.Input.mapInputValue<GetLoadBalancersResultSessionAffinityAttributes, Map<String, dynamic>>(sessionAffinityAttributes, (value) => value.toMap()),
      'sessionAffinityTtl': sessionAffinityTtl,
      'steeringPolicy': steeringPolicy,
      'ttl': ttl,
      'zoneName': zoneName,
    };
  }

  factory GetLoadBalancersResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersResult(
      adaptiveRouting: pulumi.Input.fromValue(GetLoadBalancersResultAdaptiveRouting.fromMap((map['adaptiveRouting']! as Map).cast<String, dynamic>())),
      countryPools: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['countryPools']!, (value) => (value as List).cast<String>())),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      defaultPools: pulumi.Input.fromValue((map['defaultPools'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      fallbackPool: pulumi.Input.fromValue(map['fallbackPool'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      locationStrategy: pulumi.Input.fromValue(GetLoadBalancersResultLocationStrategy.fromMap((map['locationStrategy']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networks: pulumi.Input.fromValue((map['networks'] as List).cast<String>()),
      popPools: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['popPools']!, (value) => (value as List).cast<String>())),
      proxied: pulumi.Input.fromValue(map['proxied'] as bool),
      randomSteering: pulumi.Input.fromValue(GetLoadBalancersResultRandomSteering.fromMap((map['randomSteering']! as Map).cast<String, dynamic>())),
      regionPools: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['regionPools']!, (value) => (value as List).cast<String>())),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLoadBalancersResultRule>(map['rules']!, (value) => GetLoadBalancersResultRule.fromMap((value as Map).cast<String, dynamic>()))),
      sessionAffinity: pulumi.Input.fromValue(map['sessionAffinity'] as String),
      sessionAffinityAttributes: pulumi.Input.fromValue(GetLoadBalancersResultSessionAffinityAttributes.fromMap((map['sessionAffinityAttributes']! as Map).cast<String, dynamic>())),
      sessionAffinityTtl: pulumi.Input.fromValue((map['sessionAffinityTtl'] as num).toDouble()),
      steeringPolicy: pulumi.Input.fromValue(map['steeringPolicy'] as String),
      ttl: pulumi.Input.fromValue((map['ttl'] as num).toDouble()),
      zoneName: pulumi.Input.fromValue(map['zoneName'] as String),
    );
  }
}
