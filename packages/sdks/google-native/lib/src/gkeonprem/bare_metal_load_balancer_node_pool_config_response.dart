// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config_response.dart';

/// Specifies the load balancer's node pool configuration.
class BareMetalLoadBalancerNodePoolConfigResponse {
  /// The generic configuration for a node pool running a load balancer.
  final pulumi.Input<BareMetalNodePoolConfigResponse> nodePoolConfig;

  /// Creates a new [BareMetalLoadBalancerNodePoolConfigResponse].
  /// [nodePoolConfig] The generic configuration for a node pool running a load balancer.
  BareMetalLoadBalancerNodePoolConfigResponse({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': pulumi.Input.mapInputValue<BareMetalNodePoolConfigResponse, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalLoadBalancerNodePoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalLoadBalancerNodePoolConfigResponse(
      nodePoolConfig: (BareMetalNodePoolConfigResponse.fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

