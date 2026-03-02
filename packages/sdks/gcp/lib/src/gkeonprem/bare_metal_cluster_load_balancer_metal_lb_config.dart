// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_load_balancer_metal_lb_config_address_pool.dart';
import 'bare_metal_cluster_load_balancer_metal_lb_config_load_balancer_node_pool_config.dart';

class BareMetalClusterLoadBalancerMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer
  /// typed services. All addresses must be routable to load balancer nodes.
  /// IngressVIP must be included in the pools.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalClusterLoadBalancerMetalLbConfigAddressPool>> addressPools;
  /// Specifies the load balancer's node pool configuration.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig>? loadBalancerNodePoolConfig;

  /// Creates a new [BareMetalClusterLoadBalancerMetalLbConfig].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer
  /// [loadBalancerNodePoolConfig] Specifies the load balancer's node pool configuration.
  BareMetalClusterLoadBalancerMetalLbConfig({
    required this.addressPools,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools': pulumi.Input.mapInputValue<List<BareMetalClusterLoadBalancerMetalLbConfigAddressPool>, List<Map<String, dynamic>>>(addressPools, (value) => pulumi.Input.encodeList<BareMetalClusterLoadBalancerMetalLbConfigAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerNodePoolConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig, Map<String, dynamic>>(loadBalancerNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterLoadBalancerMetalLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerMetalLbConfig(
      addressPools: (pulumi.Input.decodeList<BareMetalClusterLoadBalancerMetalLbConfigAddressPool>(map['addressPools'], (value) => BareMetalClusterLoadBalancerMetalLbConfigAddressPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerNodePoolConfig: map['loadBalancerNodePoolConfig'] == null ? null : (BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig.fromMap((map['loadBalancerNodePoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

