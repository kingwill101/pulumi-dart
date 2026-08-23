// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config.dart';

class BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig>? nodePoolConfig;

  /// Creates a new [BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running a load balancer.
  const BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig(
      nodePoolConfig: (() { final guardedValue = map['nodePoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
