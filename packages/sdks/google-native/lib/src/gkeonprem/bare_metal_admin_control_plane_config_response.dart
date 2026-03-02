// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_api_server_argument_response.dart';
import 'bare_metal_admin_control_plane_node_pool_config_response.dart';

/// BareMetalAdminControlPlaneConfig specifies the control plane configuration.
class BareMetalAdminControlPlaneConfigResponse {
  /// Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  final pulumi.Input<List<BareMetalAdminApiServerArgumentResponse>> apiServerArgs;
  /// Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  final pulumi.Input<BareMetalAdminControlPlaneNodePoolConfigResponse> controlPlaneNodePoolConfig;

  /// Creates a new [BareMetalAdminControlPlaneConfigResponse].
  /// [apiServerArgs] Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  /// [controlPlaneNodePoolConfig] Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  BareMetalAdminControlPlaneConfigResponse({
    required this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerArgs': pulumi.Input.mapInputValue<List<BareMetalAdminApiServerArgumentResponse>, List<Map<String, dynamic>>>(apiServerArgs, (value) => pulumi.Input.encodeList<BareMetalAdminApiServerArgumentResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneNodePoolConfig': pulumi.Input.mapInputValue<BareMetalAdminControlPlaneNodePoolConfigResponse, Map<String, dynamic>>(controlPlaneNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminControlPlaneConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneConfigResponse(
      apiServerArgs: (pulumi.Input.decodeList<BareMetalAdminApiServerArgumentResponse>(map['apiServerArgs'], (value) => BareMetalAdminApiServerArgumentResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      controlPlaneNodePoolConfig: (BareMetalAdminControlPlaneNodePoolConfigResponse.fromMap((map['controlPlaneNodePoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

