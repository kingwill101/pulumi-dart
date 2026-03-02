// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_config_response.dart';

/// BareMetalAdminControlPlaneNodePoolConfig specifies the control plane node pool configuration. We have a control plane specific node pool config so that we can flexible about supporting control plane specific fields in the future.
class BareMetalAdminControlPlaneNodePoolConfigResponse {
  /// The generic configuration for a node pool running the control plane.
  final pulumi.Input<BareMetalNodePoolConfigResponse> nodePoolConfig;

  /// Creates a new [BareMetalAdminControlPlaneNodePoolConfigResponse].
  /// [nodePoolConfig] The generic configuration for a node pool running the control plane.
  BareMetalAdminControlPlaneNodePoolConfigResponse({
    required this.nodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolConfig': pulumi.Input.mapInputValue<BareMetalNodePoolConfigResponse, Map<String, dynamic>>(nodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminControlPlaneNodePoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneNodePoolConfigResponse(
      nodePoolConfig: (BareMetalNodePoolConfigResponse.fromMap((map['nodePoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

