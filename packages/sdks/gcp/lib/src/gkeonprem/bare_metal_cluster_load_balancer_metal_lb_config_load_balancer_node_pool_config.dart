// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_load_balancer_metal_lb_config_load_balancer_node_pool_config_node_pool_config.dart';

class BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig>? nodePoolConfig;

  /// Creates a new [BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running a load balancer.
  const BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfig(
      nodePoolConfig: (() { final guardedValue = map['nodePoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalClusterLoadBalancerMetalLbConfigLoadBalancerNodePoolConfigNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

