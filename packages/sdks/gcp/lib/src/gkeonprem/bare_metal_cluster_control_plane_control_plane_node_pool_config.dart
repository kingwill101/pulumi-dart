// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_control_plane_control_plane_node_pool_config_node_pool_config.dart';

class BareMetalClusterControlPlaneControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  /// Structure is documented below.
  final pulumi.Input<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig> nodePoolConfig;

  /// Creates a new [BareMetalClusterControlPlaneControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  const BareMetalClusterControlPlaneControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': pulumi.Input.mapInputValue<BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalClusterControlPlaneControlPlaneNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterControlPlaneControlPlaneNodePoolConfig(
      nodePoolConfig: pulumi.Input.fromValue(BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfig.fromMap((map['nodePoolConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
