// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config_response.dart';

/// Specifies the control plane node pool configuration.
class BareMetalControlPlaneNodePoolConfigResponse {
  /// The generic configuration for a node pool running the control plane.
  final pulumi.Input<BareMetalNodePoolConfigResponse> nodePoolConfig;

  /// Creates a new [BareMetalControlPlaneNodePoolConfigResponse].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalControlPlaneNodePoolConfigResponse({required this.nodePoolConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig':
          pulumi.Input.mapInputValue<
            BareMetalNodePoolConfigResponse,
            Map<String, dynamic>
          >(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalControlPlaneNodePoolConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalControlPlaneNodePoolConfigResponse(
      nodePoolConfig: pulumi.Input.fromValue(
        BareMetalNodePoolConfigResponse.fromMap(
          (map['nodePoolConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
