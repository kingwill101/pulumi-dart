// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config.dart';

/// Specifies the control plane node pool configuration.
class BareMetalControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  final pulumi.Input<BareMetalNodePoolConfig> nodePoolConfig;

  /// Creates a new [BareMetalControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalControlPlaneNodePoolConfig({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': pulumi.Input.mapInputValue<BareMetalNodePoolConfig, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalControlPlaneNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalControlPlaneNodePoolConfig(
      nodePoolConfig: pulumi.Input.fromValue(BareMetalNodePoolConfig.fromMap((map['nodePoolConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

