// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config.dart';

/// BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool configuration. We have a control plane specific node pool config so that we can flexible about supporting control plane specific fields in the future.
class BareMetalAdminControlPlaneNodePoolConfig {
  /// The generic configuration for a node pool running the control plane.
  final pulumi.Input<BareMetalNodePoolConfig> nodePoolConfig;

  /// Creates a new [BareMetalAdminControlPlaneNodePoolConfig].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalAdminControlPlaneNodePoolConfig({required this.nodePoolConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig':
          pulumi.Input.mapInputValue<
            BareMetalNodePoolConfig,
            Map<String, dynamic>
          >(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminControlPlaneNodePoolConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminControlPlaneNodePoolConfig(
      nodePoolConfig: pulumi.Input.fromValue(
        BareMetalNodePoolConfig.fromMap(
          (map['nodePoolConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
