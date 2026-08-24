// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_load_balancer_get_load_balancer_args_doc}
/// Arguments for getLoadBalancer.
/// {@endtemplate}
/// {@macro pulumi_index_get_load_balancer_get_load_balancer_args_doc}
class GetLoadBalancerArgs {
  final pulumi.Input<String> loadBalancerId;
  /// Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  final pulumi.Input<Map<String, List<String>>?>? popPools;
  /// A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  final pulumi.Input<Map<String, List<String>>?>? regionPools;
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetLoadBalancerArgs].
  /// [loadBalancerId] Required.
  /// [popPools] Enterprise only: A mapping of Cloudflare PoP identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). Any PoPs not explicitly defined will fall back to using the corresponding country*pool, then region*pool mapping if it exists else to default_pools.
  /// [regionPools] A mapping of region codes to a list of pool IDs (ordered by their failover priority) for the given region. Any regions not explicitly defined will fall back to using default_pools.
  /// [zoneId] Optional.
  const GetLoadBalancerArgs({
    required this.loadBalancerId,
    this.popPools,
    this.regionPools,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': loadBalancerId,
      'popPools': ?popPools,
      'regionPools': ?regionPools,
      'zoneId': ?zoneId,
    };
  }

  factory GetLoadBalancerArgs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerArgs(
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      popPools: (() { final guardedValue = map['popPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      regionPools: (() { final guardedValue = map['regionPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
