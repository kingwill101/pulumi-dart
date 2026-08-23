// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_api_server_argument_response.dart';
import 'bare_metal_control_plane_node_pool_config_response.dart';

/// Specifies the control plane configuration.
class BareMetalControlPlaneConfigResponse {
  /// Customizes the default API server args. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
  final pulumi.Input<List<BareMetalApiServerArgumentResponse>> apiServerArgs;
  /// Configures the node pool running the control plane.
  final pulumi.Input<BareMetalControlPlaneNodePoolConfigResponse> controlPlaneNodePoolConfig;

  /// Creates a new [BareMetalControlPlaneConfigResponse].
  /// [apiServerArgs] Customizes the default API server args. Only a subset of customized flags are supported. For the exact format, refer to the [API server documentation](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/).
  /// [controlPlaneNodePoolConfig] Configures the node pool running the control plane.
  const BareMetalControlPlaneConfigResponse({
    required this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerArgs': pulumi.Input.mapInputValue<List<BareMetalApiServerArgumentResponse>, List<Map<String, dynamic>>>(apiServerArgs, (value) => pulumi.Input.encodeList<BareMetalApiServerArgumentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneNodePoolConfig': pulumi.Input.mapInputValue<BareMetalControlPlaneNodePoolConfigResponse, Map<String, dynamic>>(controlPlaneNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalControlPlaneConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalControlPlaneConfigResponse(
      apiServerArgs: pulumi.Input.fromValue(pulumi.Input.decodeList<BareMetalApiServerArgumentResponse>(map['apiServerArgs']!, (value) => BareMetalApiServerArgumentResponse.fromMap((value as Map).cast<String, dynamic>()))),
      controlPlaneNodePoolConfig: pulumi.Input.fromValue(BareMetalControlPlaneNodePoolConfigResponse.fromMap((map['controlPlaneNodePoolConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
