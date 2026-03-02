// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_api_server_argument.dart';
import 'bare_metal_admin_control_plane_node_pool_config.dart';

/// BareMetalAdminControlPlaneConfig specifies the control plane configuration.
class BareMetalAdminControlPlaneConfig {
  /// Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  final pulumi.Input<List<BareMetalAdminApiServerArgument>>? apiServerArgs;
  /// Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  final pulumi.Input<BareMetalAdminControlPlaneNodePoolConfig> controlPlaneNodePoolConfig;

  /// Creates a new [BareMetalAdminControlPlaneConfig].
  /// [apiServerArgs] Customizes the default API server args. Only a subset of customized flags are supported. Please refer to the API server documentation below to know the exact format: https://kubernetes.io/docs/reference/command-line-tools-reference/kube-apiserver/
  /// [controlPlaneNodePoolConfig] Configures the node pool running the control plane. If specified the corresponding NodePool will be created for the cluster's control plane. The NodePool will have the same name and namespace as the cluster.
  BareMetalAdminControlPlaneConfig({
    this.apiServerArgs,
    required this.controlPlaneNodePoolConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerArgs': ?pulumi.Input.mapOptionalInputValue<List<BareMetalAdminApiServerArgument>, List<Map<String, dynamic>>>(apiServerArgs, (value) => pulumi.Input.encodeList<BareMetalAdminApiServerArgument, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controlPlaneNodePoolConfig': pulumi.Input.mapInputValue<BareMetalAdminControlPlaneNodePoolConfig, Map<String, dynamic>>(controlPlaneNodePoolConfig, (value) => value.toMap()),
    };
  }

  factory BareMetalAdminControlPlaneConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminControlPlaneConfig(
      apiServerArgs: map['apiServerArgs'] == null ? null : (pulumi.Input.decodeList<BareMetalAdminApiServerArgument>(map['apiServerArgs']!, (value) => BareMetalAdminApiServerArgument.fromMap((value as Map).cast<String, dynamic>()))).input(),
      controlPlaneNodePoolConfig: (BareMetalAdminControlPlaneNodePoolConfig.fromMap((map['controlPlaneNodePoolConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

