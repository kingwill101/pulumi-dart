// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config.dart';

/// Specifies the load balancer's node pool configuration.
class BareMetalLoadBalancerNodePoolConfig {
  /// The generic configuration for a node pool running a load balancer.
  final pulumi.Input<BareMetalNodePoolConfig>? nodePoolConfig;

  /// Creates a new [BareMetalLoadBalancerNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running a load balancer.
  BareMetalLoadBalancerNodePoolConfig({this.nodePoolConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BareMetalNodePoolConfig,
            Map<String, dynamic>
          >(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalLoadBalancerNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalLoadBalancerNodePoolConfig(
      nodePoolConfig: (() {
        final guardedValue = map['nodePoolConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BareMetalNodePoolConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
