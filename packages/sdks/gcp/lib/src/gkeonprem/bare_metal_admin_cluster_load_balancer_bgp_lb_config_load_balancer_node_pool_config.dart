// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_load_balancer_bgp_lb_config_load_balancer_node_pool_config_node_pool_config.dart';

class BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig>? nodePoolConfig;

  /// Creates a new [BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig].
  /// [nodePoolConfig] A nested object resource.
  const BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig({
    this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': ?pulumi.Input.mapOptionalInputValue<BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfig(
      nodePoolConfig: (() { final guardedValue = map['nodePoolConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
