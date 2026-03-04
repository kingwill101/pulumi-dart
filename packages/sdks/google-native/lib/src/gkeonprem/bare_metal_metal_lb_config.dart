// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_load_balancer_address_pool.dart';
import 'bare_metal_load_balancer_node_pool_config.dart';

/// Represents configuration parameters for a MetalLB load balancer.
class BareMetalMetalLbConfig {
  /// AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  final pulumi.Input<List<BareMetalLoadBalancerAddressPool>> addressPools;

  /// Specifies the node pool running the load balancer. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used as the load balancer pool.
  final pulumi.Input<BareMetalLoadBalancerNodePoolConfig>?
  loadBalancerNodePoolConfig;

  /// Creates a new [BareMetalMetalLbConfig].
  /// [addressPools] AddressPools is a list of non-overlapping IP pools used by load balancer typed services. All addresses must be routable to load balancer nodes. IngressVIP must be included in the pools.
  /// [loadBalancerNodePoolConfig] Specifies the node pool running the load balancer. L2 connectivity is required among nodes in this pool. If missing, the control plane node pool is used as the load balancer pool.
  BareMetalMetalLbConfig({
    required this.addressPools,
    this.loadBalancerNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPools':
          pulumi.Input.mapInputValue<
            List<BareMetalLoadBalancerAddressPool>,
            List<Map<String, dynamic>>
          >(
            addressPools,
            (value) =>
                pulumi.Input.encodeList<
                  BareMetalLoadBalancerAddressPool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerNodePoolConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BareMetalLoadBalancerNodePoolConfig,
            Map<String, dynamic>
          >(loadBalancerNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalMetalLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalMetalLbConfig(
      addressPools: pulumi.Input.fromValue(
        pulumi.Input.decodeList<BareMetalLoadBalancerAddressPool>(
          map['addressPools']!,
          (value) => BareMetalLoadBalancerAddressPool.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      loadBalancerNodePoolConfig: (() {
        final guardedValue = map['loadBalancerNodePoolConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BareMetalLoadBalancerNodePoolConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
